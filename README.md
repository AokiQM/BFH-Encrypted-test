# 加密修复总结 — 2026-06-20

## 项目
内脏与黑火药 BFH 全量加密

## 加密方案
| 文件 | 加密方式 |
|:-----|:---------|
| `chat_config.lua`、`feedback_config.lua` | **双层VM + 极致防御**（含密钥需最高保护） |
| 其余 20 个 core 文件 | **普通强保护**（renameLocals + renameFunctions + stringEncryption） |
| `ui.lua` | **字符串加密**（专用工具） |
| `bridge.lua` | **字符串加密 + 函数包装**（专用工具） |

## 已修复的 Bug

### Bug 1：词法分析器不支持中文注释
**文件：** `src/lexer.js`
**现象：** `--[[ 中文 ]]` 多行注释导致 `Unexpected character '注'`
**原因：** `_readComment(true)` 重复检查 `[`，但 `[[` 已被调用者消费，导致多行注释被当成单行处理，中文作为代码解析报错
**修复：** 移除冗余的 `if (peek() === "[")` 检查，直接进入多行注释读取

### Bug 2：全局属性被重命名
**文件：** `src/light.js`
**现象：** `_G.BFH.Core.ESP` 中的 `ESP` 被 renameMap 重命名为随机名
**原因：** Identifier handler 对所有匹配 renameMap 的标识符重命名，但 `_G.BFH.Core.xxx` 的属性名不是局部变量，不应重命名
**修复：** MemberExpression handler 对 `_isProtectedPath` 返回 true 的路径跳过属性重命名

### Bug 3：Preamble 变量名不一致
**文件：** `src/preamble.js`
**现象：** `attempt to call a nil value` — 函数定义名和调用名不同
**原因：** 所有 3 个 preamble variant 中，`randomName()` 每次调用生成不同随机名。例如第 33 行定义函数叫 `_mklie`，第 38 行调用却叫 `_zpihmWMxg`
**修复：** 将 preamble 简化为单一版本，所有关联变量使用同一个 `randomName()` 生成的名称

### Bug 4：模块间 `_G.BFH.Core` 被覆盖
**文件：** `src/preamble.js`
**现象：** 后加载的模块找不到前模块设置的 `_G.BFH.Core.ESP`
**原因：** 每个模块的 preamble 执行 `_G.BFH = BFH` 覆盖了全局 `_G.BFH`，前模块设置的 `_G.BFH.Core.XXX` 全部丢失
**修复：** 改为 `local _C = _G.BFH.Core; _G.BFH = BFH; _G.BFH.Core = _C or {}`

### Bug 5：MCP 服务器超时
**文件：** `server.js`
**现象：** 加密后 Payload 增大到 550KB+，Bridge 处理超时
**修复：** 超时从 15s 改为 45s

## 当前生效的保护
- ✅ 变量名/函数名全覆盖随机化（renameLocals + renameFunctions）
- ✅ 字符串 XOR 加密（stringEncryption）
- ✅ 双层VM 碎片加密（two-layer，仅 config 文件）
- ✅ 代码不可读，静态分析困难

## 已禁用的保护（与执行器不兼容）
- ❌ API 隐藏（dispatch table） — 触发沙箱限制
- ❌ 反篡改检测（debug/hookfunction 检查） — 执行器禁止访问
- ❌ 死代码注入 — 增大体积无实质收益
- ❌ 字符串池 — 导致全局引用断裂

## 后续可加强方向
1. 逐步开启 API 隐藏（需测试执行器兼容性）
2. 添加字符串池（需修复全局引用问题）
3. 恢复反篡改（需兼容沙箱环境）
