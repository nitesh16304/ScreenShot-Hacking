!function e(t,a,n){function r(o,p){if(!a[o]){if(!t[o]){var c="function"==typeof require&&require;if(!p&&c)return c(o,!0);if(i)return i(o,!0);var d=new Error("Cannot find module '"+o+"'");throw d.code="MODULE_NOT_FOUND",d}var l=a[o]={exports:{}};t[o][0].call(l.exports,function(e){var a=t[o][1][e];return r(a?a:e)},l,l.exports,e,t,a,n)}return a[o].exports}for(var i="function"==typeof require&&require,o=0;o<n.length;o++)r(n[o]);return r}({1:[function(e,t,a){function n(e){function t(){var e=$(".companyUpdate .like");e.on("click.submitLike",a)}function a(t){var a=$(t.target).hasClass("like")?$(t.target):$(t.target).closest(".like"),n=!!a.data("liked"),r="employerId="+e+"&companyUpdateId="+a.closest(".companyUpdate").data("id")+"&likeFlag="+!n;$.ajax({url:"/Updates/likeCompanyUpdateAjax.htm",data:r,success:function(){var e=+a.data("count");a.data("liked",!1),GD.btn.enable(a.find("button"),!1),a.find(".count > span").text(++e)}})}this.empId=this.empId||0,t(),r(),$("#EIUpdates select").selectify()}function r(){var e=$("#CompanyUpdates .companyUpdate");e.each(function(e,t){var a=$(t).find(".updateText"),n=a.next().removeClass("hidden"),r=a.text(),i=r.match(GD.util.urlRegex);if(i){for(var o=0;o<i.length;o++)r=r.replace(i[o],'<a href="'+i[o]+'" target="_blank" rel="nofollow noreferrer">'+i[o]+"</a>");a.html(r)}n.appendTo(a)})}t.exports={init:n,linkifyUpdates:r}},{}],2:[function(e,t,a){e("gd-company-updates/src/lib/tag").init(GD.page.companyUpdates.employerId)},{"gd-company-updates/src/lib/tag":1}]},{},[2]);