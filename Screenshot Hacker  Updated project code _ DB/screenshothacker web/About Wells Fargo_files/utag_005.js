//tealium universal tag - utag.195 ut4.0.201709111904, Copyright 2017 Tealium.com Inc. All Rights Reserved.
try{(function(id,loader){var u={"id":id};utag.o[loader].sender[id]=u;if(utag.ut===undefined){utag.ut={};}
var match=/ut\d\.(\d*)\..*/.exec(utag.cfg.v);if(utag.ut.loader===undefined||!match||parseInt(match[1])<35){u.loader=function(o){var b,c,l,a=document;if(o.type==="iframe"){b=a.createElement("iframe");o.attrs=o.attrs||{"height":"1","width":"1","style":"display:none"};for(l in utag.loader.GV(o.attrs)){b.setAttribute(l,o.attrs[l]);}b.setAttribute("src",o.src);}else if(o.type=="img"){utag.DB("Attach img: "+o.src);b=new Image();b.src=o.src;return;}else{b=a.createElement("script");b.language="javascript";b.type="text/javascript";b.async=1;b.charset="utf-8";for(l in utag.loader.GV(o.attrs)){b[l]=o.attrs[l];}b.src=o.src;}if(o.id){b.id=o.id};if(typeof o.cb=="function"){if(b.addEventListener){b.addEventListener("load",function(){o.cb()},false);}else{b.onreadystatechange=function(){if(this.readyState=='complete'||this.readyState=='loaded'){this.onreadystatechange=null;o.cb()}};}}l=o.loc||"head";c=a.getElementsByTagName(l)[0];if(c){utag.DB("Attach to "+l+": "+o.src);if(l=="script"){c.parentNode.insertBefore(b,c);}else{c.appendChild(b)}}}}else{u.loader=utag.ut.loader;}
u.ev={"view":1};u.rp=function(a,b){if(typeof a!="undefined"&&a.indexOf(u.t)>0){a=a.replace(/@@([^@]+)@@/g,function(m,d){if(b[d]){return encodeURIComponent(b[d]);}else{return'';}});}
return a;};u.map={};u.extend=[function(a,b){try{if((b['page_id']=='thankYou'&&b['product_code']=='CC'&&b['subproduct_code']=='AP')){b['aol_conv_type']='135952'}}catch(e){utag.DB(e)}},function(a,b){try{if((b['page_id']=='thankYou'&&b['product_code']=='CC'&&b['subproduct_code']=='AT')){b['aol_conv_type']='135954'}}catch(e){utag.DB(e)}},function(a,b){try{if((b['page_id']=='thankYou'&&b['product_code']=='CC'&&b['subproduct_code']=='SG')){b['aol_conv_type']='135955'}}catch(e){utag.DB(e)}},function(a,b){try{if((b['page_id']=='thankYou'&&b['product_code']=='CC'&&b['subproduct_code']=='NV')){b['aol_conv_type']='135956'}}catch(e){utag.DB(e)}},function(a,b){try{if((b['page_id']=='thankYou'&&b['product_code']=='CC'&&b['subproduct_code']=='CW')){b['aol_conv_type']='135957'}}catch(e){utag.DB(e)}},function(a,b){try{if((b['page_id']=='thankYou'&&b['product_code']=='CC'&&b['subproduct_code']=='RV')){b['aol_conv_type']='135958'}}catch(e){utag.DB(e)}},function(a,b){try{if((b['page_id']=='thankYou'&&b['product_code']=='CC'&&b['subproduct_code']=='SB')){b['aol_conv_type']='135959'}}catch(e){utag.DB(e)}},function(a,b){try{if((b['page_id']=='thankYou'&&b['product_code']=='CC'&&b['subproduct_code']=='HR')){b['aol_conv_type']='135960'}}catch(e){utag.DB(e)}},function(a,b){try{if((b['page_id']=='thankYou'&&b['product_code']=='CC'&&b['subproduct_code']=='SV')){b['aol_conv_type']='135961'}}catch(e){utag.DB(e)}},function(a,b){try{if((b['page_id']=='thankYou'&&b['product_code']=='CC'&&b['subproduct_code']=='VH')){b['aol_conv_type']='135962'}}catch(e){utag.DB(e)}}];u.send=function(a,b){if(u.ev[a]||u.ev.all!==undefined){utag.DB("send:195");utag.DB(b);var c;u.t="@@";u.i=[];u.p=["https://secure.ace-tag.advertising.com/action/type=@@aol_conv_type@@/bins=1/rich=0/Mnum=1516","","","","","","",""];u.delim="";u.cachebust="disabled";u.cachevar=""||"_rnd";for(c=0;c<u.extend.length;c++){try{d=u.extend[c](a,b);if(d==false)return}catch(e){}};if(!b.aol_conv_type)return false;for(c=0;c<u.p.length;c++){if(u.p[c]!=""){var x=u.rp(u.p[c],b);if(x!=""){if(u.cachebust=="enabled"&&x.indexOf(u.cachevar)<0){if(x.indexOf("?")<0){u.delim="?";}else{u.delim="&";}
x+=u.delim+u.cachevar+"="+Math.random();}
var img=new Image();img.src=x;u.i.push(img);}}}}};utag.o[loader].loader.LOAD(id);}("195","wfc.main"));}catch(error){utag.DB(error);}
