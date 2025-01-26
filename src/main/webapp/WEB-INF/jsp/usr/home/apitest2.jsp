<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>API 테스트</title>
</head>
<body>
  <script>
    var key = "lEgocXTdYHEktis73TMO%2FQGMwDYdnX2IqQjrAzGQFEcdPnIf75MmOzp4Ya6hBt0slO88UTz0hn3FiugPFPHTaA%3D%3D";
    var xhr = new XMLHttpRequest();
    var url = 'http://apis.data.go.kr/1262000/TravelAlarmService0404/getTravelAlarm0404List'; /*URL*/
    var queryParams = '?' + encodeURIComponent('serviceKey') + '='+ key; /*Service Key*/
    queryParams += '&' + encodeURIComponent('page') + '=' + encodeURIComponent('1'); /**/
    queryParams += '&' + encodeURIComponent('perPage') + '=' + encodeURIComponent('100'); /**/
    queryParams += '&' + encodeURIComponent('returnType') + '=' + encodeURIComponent('JSON'); /**/
    // queryParams += '&' + encodeURIComponent('cond[country_nm::EQ]') + '=' + encodeURIComponent('러시아'); /**/
    queryParams += '&' + encodeURIComponent('cond[country_iso_alp2::EQ]') + '=' + encodeURIComponent('RU'); /**/
    xhr.open('GET', url + queryParams);
    xhr.onreadystatechange = function () {
        if (this.readyState == 4) {
            console.log('Status: '+this.status+'nHeaders: '+JSON.stringify(this.getAllResponseHeaders())+'nBody: '+this.responseText);
        }
    };

    xhr.send('');

  </script>
</body>
</html>