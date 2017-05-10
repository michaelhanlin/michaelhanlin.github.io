---
title: contact
date: 2017-05-09 14:56:50
---

## 联系我

<form action="//formspree.io/ming_c@hotmail.com" class="col-md-6 col-sm-6 col-xs-12" method="POST">
    <fieldset class="field">
        <label class="label" for="name"><span class="label-content">你的名字：</span></label>
        <input class="input" type="text" name="name" placeholder="你的名字" required/>
    </fieldset><fieldset class="field">
        <label class="label" for="_replyto"><span class="label-content">你的邮箱：</span></label>
        <input class="input" type="email" name="_replyto" placeholder="仅用于回复你的消息" required/>
    </fieldset><fieldset class="field">
        <label class="label" for="message"><span class="label-content">你的留言：</span></label>
        <textarea class="input" name="message" cols="1" rows="10" placeholder="留言内容" required></textarea>
    </fieldset>
    <fieldset class="field field-button">
        <input class="button submit" type="submit" value="发送"/>
    </fieldset>
    <input class="hidden" type="text" name="_gotcha" style="display:none"/>
    <input class="hidden" type="hidden" name="_subject" value="来自 <%= config.url %> 的留言"/>
</form>
<script>
    [].slice.call(document.querySelectorAll('.input')).forEach(function(inputEl) {
        // in case the input is already filled..
        if (inputEl.value.trim() !== '') {
            jQuery(this).parent('fieldset').addClass('input--filled');
        }
        // events:
        inputEl.addEventListener('focus', onInputFocus);
        inputEl.addEventListener('blur', onInputBlur);
    });

    function onInputFocus(ev) {
        jQuery(this).parent('fieldset').addClass('input--filled');
    }

    function onInputBlur(ev) {
        if (ev.target.value.trim() === '') {
            jQuery(this).parent('fieldset').removeClass('input--filled');
        }
    }
</script>

