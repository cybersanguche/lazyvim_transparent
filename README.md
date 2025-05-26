🧼 Neovim — Eliminar colores de fondo molestos (Lazy, LSP, etc.)

**Objetivo:**  
Forzar transparencia y fondo limpio en interfaces como Lazy.nvim, Mason, Noice, LSP popups, etc., especialmente útil para setups con terminal semitransparente o fondo con imagen.

---

### 🧠 Mantra

> _"Si no veo el fondo, no lo controlo."_  
> Si Neovim mete color donde no debe, te está robando el control visual.

---

### 🗺️ Mapa

|Grupo|Qué afecta|Acción tomada|
|---|---|---|
|`Normal`, `NormalNC`|Fondo general de buffers y ventanas|Setear fondo a `NONE`|
|`NormalFloat`|Popups, previews flotantes|Fondo `NONE`|
|`LazyNormal`|Fondo de Lazy.nvim|Fondo `NONE`|
|`MasonNormal`|Fondo de Mason|Fondo `NONE`|
|`Noice*`|Popups de Noice (mensajes, mini popups, etc)|Fondo `NONE`|
|`TelescopeNormal`|Fondo de Telescope|Fondo `NONE`|
|`WhichKeyNormal`|Fondo del plugin WhichKey|Fondo `NONE`|
|`CmpDocumentation`|Tooltips flotantes del autocompletado|Fondo `NONE`|
|`Pmenu`|Menú de autocompletado|Fondo `NONE`|
|`FloatBorder`|Bordes de ventanas flotantes|Opción: también `NONE`|

---

### ⚙️ Táctica

#### Código Lua para `config/highlights.lua` o inline en `init.lua`:

```
vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })

-- Plugins específicos
vim.api.nvim_set_hl(0, "LazyNormal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "MasonNormal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NoicePopup", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NoicePopupBorder", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NoicePopupmenu", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NoicePopupmenuSelected", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NoiceCmdlinePopup", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { bg = "NONE" })

vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "NONE" })
vim.api.nvim_set_hl(0, "WhichKeyNormal", { bg = "NONE" })

-- CMP / Autocompletado
vim.api.nvim_set_hl(0, "CmpDocumentation", { bg = "NONE" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE" })


```
💡 _Tip:_ Esto conviene aplicarlo **después** de cargar el colorscheme.

#### Cómo asegurarte que se ejecute al final:

```
vim.cmd.colorscheme("catppuccin") -- o tu tema
require("config.highlights") -- donde pongas los parches

```

---

### 🔥 Atajos mentales

- Si algo flota y no es transparente, `NormalFloat` o `CmpDocumentation`.
    
- Si es un plugin, buscá su nombre seguido de `Normal`.
    
- `FloatBorder` molesta si querés total transparencia (opcional).
    
- Los `Popup`, `Popupmenu`, `CmdlinePopup` suelen venir de Noice.
    

---

### 🧪 Casos especiales (expandible)

lua

CopiarEditar

```
-- Si usás Alpha.nvim (startup screen) 
vim.api.nvim_set_hl(0, "AlphaNormal", { bg = "NONE" })
```

```
-- Si usás nvim-notify
vim.api.nvim_set_hl(0, "NotifyBackground", { bg = "NONE" })

```
---

### 🧼 Resultado

- Interfaz 100% visualmente limpia.
    
- Colores controlados por vos, no por cada plugin.
    
- Compatible con transparencias reales del terminal o fondo con imagen.
