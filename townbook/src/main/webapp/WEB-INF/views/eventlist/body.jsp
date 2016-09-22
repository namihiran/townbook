<div class="row" ng-controller="eventMgmtController" ng-init="init('tokyo')">
  <div class="col-md-2">
    <c:set var="messageSource" value="${MessageSource}" />
    <div div class="list-group">
      <c:forEach var="pref" items="${Prefectures}" >
        <a href="#${pref.getId()}" class="list-group-item" ng-class="{active: isActive( '${pref.getId()}' )}" ng-click="getEventsByPref( '${pref.getId()}' )">${pref.getDisplayname(messageSource, request.getLocale())}</a>
      </c:forEach>
    </div>
  </div>  
  <div class="col-md-9">
    <h1>イベント一覧</h1>
    <div class="well" ng-repeat="event in events">
      <dl class="dl-horizontal">
        <dt>イベント名</dt>
        <dd>{{ event.title }}</dd>
        <dt>都道府県</dt>
        <dd>{{ event.prefectureName }}</dd>
        <dt>場所</dt>
        <dd>{{ event.place }}</dd>
        <dt>説明</dt>
        <dd>{{ event.content }}</dd>
      </dl>
    </div>
  </div>
  <div class="col-md-1"></div>
</div>
