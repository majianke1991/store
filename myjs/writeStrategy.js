//var ue = UE.getEditor('container');
		var ue = UE.getEditor('container', {
			toolbars: [
				['undo','redo','|',
				'bold', 'italic', 'underline','strikethrough','|',
				'removeformat', 'formatmatch','|',
				'forecolor', 'backcolor','|',
				'selectall', 'cleardoc','|',
				'fontfamily', 'fontsize','|',
				'justifyleft', 'justifycenter', 'justifyright', 'justifyjustify', '|', 
				'simpleupload'
				]
			],
			autoHeightEnabled: true,
			autoFloatEnabled: true,
			initialStyle:'p{line-height:1em}',
			initialFrameWidth:600,
			initialFrameHeight:320,
			initialContent:'给自己的旅行来一次新鲜记录吧~',
			indentValue:'2em',
			elementPathEnabled : false,   //不启用元素路径
			wordCount:true,       //是否开启字数统计  
            maximumWords:10000       //允许的最大字符数			
		});