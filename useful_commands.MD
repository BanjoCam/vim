#### Surrounding things with other thing

- surround an entire line: yss__something__
- surround a word: ysiw__something__
- change existing ones: cs instead of ys

#### open buffer as vertical split:
- :vert sb N
    - where N is the buffer number

#### see _vimrc for shortcuts you've made.
- like, commaNT to trigger nerdtree
- or commaBG to cycle between dark and light backgrounds.

#### replace all:
`:%s/find/replace`

#### strip trailing whitespace
(defined in vimrc)
{% codeblock %}
,W
{% endcodeblock %}


#### jump to end of pasted content
When you paste text, you have marks [ and ] set to the beginning and end of pasted text. Therefore you can use `[ and `] to move the cursor to begin/end of pasted content.
note, I remapped p to automatically push `] so we jump automatically

#### Helpful autocomplete tips ####
[useful stackoverflow answer](http://superuser.com/questions/343443/are-there-any-autocompletion-plugins-for-vim)

this is a test of git-gutter
another test
