function whx#autoMKSession#AutoMKS()
	if filereadable("Session.vim")
		wviminfo! viminfo
		mks!
		echo "Session has been saved:)"
		if !filereadable("Sessionx.vim")
			execute "new Sessionx.vim"
			execute "normal Irviminfo viminfo \<cr>set path=.,.\\**"
			wq
		endif
	else
		echo "No session file:("
	endif
endfunction

function whx#autoMKSession#saveToRegister(string_data)
    let @f=a:string_data
    let @+=a:string_data
endfunction
