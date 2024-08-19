Установка горячих клавиш для русской раскладки по умолчанию в `MACOS`
=======
![shortcuts-ru](https://img.a374.ru/svg/shortcuts-ru.svg)

### <span style="color: #f09a92;">**На M3 PRO работает**

Найдено здесь: <https://blog.regolit.com/2021/03/24/macos-keyboard-shortcuts-and-russian-input-method>.

Файл `DefaultKeyBinding.dict.json` позволяет использовать стандартные макосные клавиатурные сочетания
клавиш на русской раскладке. По умолчанию они там не работают совсем. Кроме того, он добавляет несколько
стандартных сочетаний, которые по непонятным причинам не включены, хотя и реализованы в системе:

* ` ^u ` - убирает текст до начала строки
* ` ^k ` - убирает текст до конца строки

«Убранный» текст на самом деле записывает в специальный отдельный буфер, из которого его можно вставить сочетанием ` ^y `.


Введите в терминале:
==============

```bash
curl "https://raw.githubusercontent.com/a374ru/keyboard-shortcuts-ru-macos/main/dist-install.sh" -o /tmp/k-dist-install.sh && bash /tmp/k-dist-install.sh
```

Some information
================

See file /System/Library/Frameworks/AppKit.framework/Versions/C/Headers/NSEvent.h from MacOSX SDK for constants that
correspond to keys. For example, 0xF702 (or \uf702 in json notation) corresponds to NSLeftArrowFunctionKey constant,
i.e. Left Arrow key on the keyboard. If you don't have SDK installed you can find this file on github: 
<https://github.com/phracker/MacOSX-SDKs/blob/master/MacOSX11.1.sdk/System/Library/Frameworks/AppKit.framework/Versions/C/Headers/NSEvent.h>

See also https://developer.apple.com/library/mac/documentation/Cocoa/Conceptual/EventOverview/TextDefaultsBindings/TextDefaultsBindings.html

The following characters are used to denote modifier keys:

    $ - Shift / ⇧
    ~ - Option / ⌥
    ^ - Control
    # - key on numeric keypad
    @ - Command / ⌘

Complete list of available commands/actions: <https://developer.apple.com/documentation/appkit/nsstandardkeybindingresponding>.

A bit outdated list of key bindings: <https://www.hcs.harvard.edu/~jrus/site/system-bindings.html>.