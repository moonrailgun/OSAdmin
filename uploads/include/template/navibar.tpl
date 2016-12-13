<{if $sidebarStatus=='yes' }>
<body id="body" class="body">
<{else}>
<body id="body" class="body-fullscreen">
<{/if}>
<!--<![endif]-->
<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid navbar-inner">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"></button>
      <a class="navbar-brand" href="<{$smarty.const.ADMIN_URL}>/panel/index.php">
        <span class="first"></span>
        <span class="second"><{$smarty.const.COMPANY_NAME}></span>
      </a>
    </div>
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li id="fat-menu" class="dropdown navbar-right">
          <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
              <i class="icon-user"></i> <{$user_info.user_name}>
              <i class="icon-caret-down"></i>
          </a>

          <ul class="dropdown-menu">
              <li><a tabindex="-1" href="<{$smarty.const.ADMIN_URL}>/panel/profile.php">我的账号</a></li>
              <li><a tabindex="-1" href="<{$smarty.const.ADMIN_URL}>/panel/logout.php">登出</a></li>
          </ul>
        </li>

        <li id="fat-menu" class="dropdown navbar-right">
          <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
            选择模板
            <i class="icon-caret-down"></i>
          </a>

          <ul class="dropdown-menu">
          <{foreach from=$osa_templates key=key item=name}>
            <li><a href="<{$smarty.const.ADMIN_URL}>/panel/set.php?t=<{$key}>"><{$name}></a></li>
          <{/foreach}>
          </ul>
        </li>


        <{if $sidebarStatus=='yes' }>
    		<li class="doSidebarClz navbar-right"><a href="#" class="hidden-sm visible-md visible-lg" role="button">
    		关闭侧栏<i class="icon-step-backward"></i>
    		</a></li>
      	<{else}>
    		<li class="doSidebarClz navbar-right"><a href="#" class="hidden-sm visible-md visible-lg" role="button">
    		打开侧栏<i class="icon-step-forward"></i>
    		</a></li>
      	<{/if}>
      </ul>
    </div>
  </div>
</nav>

<!-- <div class="navbar">
  <div class="navbar-inner">
    <a class="navbar-brand navbar-left" href="<{$smarty.const.ADMIN_URL}>/panel/index.php"><span class="first"></span> <span class="second"><{$smarty.const.COMPANY_NAME}></span></a>
    <ul class="nav navbar-nav">
    	<{if $sidebarStatus=='yes' }>
  		<li class="doSidebarClz navbar-right"><a href="#" class="hidden-sm visible-md visible-lg" role="button">
  		关闭侧栏<i class="icon-step-backward"></i>
  		</a></li>
    	<{else}>
  		<li class="doSidebarClz navbar-right"><a href="#" class="hidden-sm visible-md visible-lg" role="button">
  		打开侧栏<i class="icon-step-forward"></i>
  		</a></li>
    	<{/if}>

    	<{if $user_info.setting}>
      <li id="fat-menu" class="dropdown navbar-right">
        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
          <i class="icon-cog"></i>设置<i class="icon-caret-down"></i>
        </a>
        <ul class="dropdown-menu">
          <li><a href="<{$smarty.const.ADMIN_URL}>/panel/setting.php">系统设置</a></li>
        </ul>
      </li>
    	<{/if}>

    	<li id="fat-menu" class="dropdown navbar-right">
        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
          选择模板
          <i class="icon-caret-down"></i>
        </a>

        <ul class="dropdown-menu">
        <{foreach from=$osa_templates key=key item=name}>
          <li><a href="<{$smarty.const.ADMIN_URL}>/panel/set.php?t=<{$key}>"><{$name}></a></li>
        <{/foreach}>
        </ul>
      </li>

    	<li id="fat-menu" class="dropdown navbar-right">
        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
            <i class="icon-user"></i> <{$user_info.user_name}>
            <i class="icon-caret-down"></i>
        </a>

        <ul class="dropdown-menu">
            <li><a tabindex="-1" href="<{$smarty.const.ADMIN_URL}>/panel/profile.php">我的账号</a></li>
            <li><a tabindex="-1" href="<{$smarty.const.ADMIN_URL}>/panel/logout.php">登出</a></li>
        </ul>
      </li>
    </ul>
    <a class="brand" href="<{$smarty.const.ADMIN_URL}>/panel/index.php"><span class="first"></span> <span class="second"><{$smarty.const.COMPANY_NAME}></span></a>
  </div>
</div> -->
