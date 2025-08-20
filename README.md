# ToluaMemory

本仓库使用 `git subtree` 来管理外部依赖 `ToluaCode` 和 `ToluaUnity`。

这样做的好处是，您只需执行一次标准的 `git clone` 命令即可获得所有代码，无需任何额外步骤。

```bash
git clone https://github.com/edoublezh/ToluaMemory.git
```

---

## 开发与维护指南

### 1. 拉取上游更新 (Pull)

本项目已通过 GitHub Action 配置了每日自动更新。当 `tolua` 或 `tolua_runtime` 仓库有更新时，Action 会自动将变更拉取到本仓库。

如果您需要立即手动更新，请执行以下命令：

**更新 ToluaCode:**
```bash
git subtree pull --prefix=ToluaCode https://github.com/edoublezh/tolua_runtime.git master --squash
```

**更新 ToluaUnity:**
```bash
git subtree pull --prefix=ToluaUnity https://github.com/edoublezh/tolua.git master --squash
```

### 2. 推送本地修改至上游 (Push)

如果您在 `ToluaMemory` 项目中直接修改了 `ToluaCode` 或 `ToluaUnity` 目录下的内容，并希望将这些修改贡献回原始仓库，可以执行以下命令。

**重要：** 推送是具有破坏性的操作，请确保您的修改是正确的。

**推送 ToluaCode 的修改:**
```bash
git subtree push --prefix=ToluaCode https://github.com/edoublezh/tolua_runtime.git master
```

**推送 ToluaUnity 的修改:**
```bash
git subtree push --prefix=ToluaUnity https://github.com/edoublezh/tolua.git master
```
