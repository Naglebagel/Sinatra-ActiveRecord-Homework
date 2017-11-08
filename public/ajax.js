
$.ajax({
	url: '/cars/info2',
	type: 'GET',
	dataType: 'JSON',
	success: (res)=>{
		const $div = $('<div>');
		res.forEach((i)=>{
			const $h1 = $('<h1>');
			$h1.text(i.model)
			$div.append($h1)
			for (variable in i){
				if(variable === 'id' || variable === 'model')
					continue;
				const $li = $('<li>');
				$li.text(i[variable]);
				$div.append($li);
			}
		})
		$('ul').append($div);
	},
	error: (err)=>{
		console.log(err, 'error')
	}
})