local load = function (mod)
    package.loaded[mod] = nil
    require(mod)
end

load('core.options')        -- import user options
load('core.keymaps')        -- import user keymaps