What is this?
=============

This is the git repo of my .vim folder for easier migration/setup
I'm using pathogen to manage my plugins and git submodules to keep them up-to-date.


Current vim plugins being used:

1. AutoComplPop
2. surround
3. snipMate
4. autoclose

Todo:
=====
- Study markdow to prettify this README


About Plugin Integration:
=========================
Until I figure out how to be able to track my changes to the submodules (plugin integration),
Some things must be changed by hand after a plugin is upgraded.

IDEA: Maybe I can mirror the plugin repositories and just pull from these mirrors??

Take note of the following changes that needs to be done post-intall

1. AutoComplPop and SnipPate integration:

bundle/snipmate/plugin/snipMate.vim:    Add the ff lines
>
 fun! GetSnipsInCurrentScope() 
    let snips = {} 
    for scope in [bufnr('%')] + split(&ft, '\.') + ['_'] 
      call extend(snips, get(s:snippets, scope, {}), 'keep') 
      call extend(snips, get(s:multi_snips, scope, {}), 'keep') 
    endfor 
    return snips 
  endf
<

DIFF:
>
diff --git a/plugin/snipMate.vim b/plugin/snipMate.vim
index ef03b12..e24f591 100644
--- a/plugin/snipMate.vim
+++ b/plugin/snipMate.vim
@@ -269,3 +269,13 @@ fun! ShowAvailableSnips()
        return ''
 endf
 " vim:noet:sw=4:ts=4:ft=vim
+
+fun! GetSnipsInCurrentScope() 
+   let snips = {} 
+   for scope in [bufnr('%')] + split(&ft, '\.') + ['_'] 
+     call extend(snips, get(s:snippets, scope, {}), 'keep') 
+     call extend(snips, get(s:multi_snips, scope, {}), 'keep') 
+   endfor 
+   return snips 
+endf 
+
<


bundle/autocomplpop/plugin/acp.vim
change: 
    set |g:acp_behaviorSnipmateLength| option to 1. 

DIFF:
>
--- a/plugin/acp.vim
+++ b/plugin/acp.vim
@@ -132,7 +132,7 @@ call s:defineOption('g:acp_completeOption', '.,w,b,k')
 call s:defineOption('g:acp_completeoptPreview', 0)
 call s:defineOption('g:acp_behaviorUserDefinedFunction', '')
 call s:defineOption('g:acp_behaviorUserDefinedMeets', '')
-call s:defineOption('g:acp_behaviorSnipmateLength', -1)
+call s:defineOption('g:acp_behaviorSnipmateLength', 1)
 call s:defineOption('g:acp_behaviorKeywordCommand', "\<C-n>")
 call s:defineOption('g:acp_behaviorKeywordLength', 2)
 call s:defineOption('g:acp_behaviorKeywordIgnores', [])
<
