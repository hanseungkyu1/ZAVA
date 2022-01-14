/*//별점 마킹 모듈 프로토타입으로 생성
function Rating(){};
Rating.prototype.rate = 0;
Rating.prototype.setRate = function(newrate){
    //별점 마킹 - 클릭한 별 이하 모든 별 체크 처리
    this.rate = newrate;
    let items = document.querySelectorAll('.rate_radio');
    items.forEach(function(item, idx){
        if(idx < newrate){
            item.checked = true;
        }else{
            item.checked = false;
        }
    });
}
let rating = new Rating();//별점 인스턴스 생성
*/

function getReviews(pid, el){
	el.html("");
	
	$.getJSON("/review/"+pid, function(data){
		for(var i=0;i<data.length;i++){
			var obj = data[i];
			msg = reviewform(obj["rno"], obj["title"], obj["mid"], obj["updatedate"]);
			
			el.append(msg);
		}
	});
	}
	
function reviewform(rno, title, mid, updatedate){
	var msg= `

				<tr>
					<td>${rno}</td>
					<td><a href="/review/read/${rno}">${title}</a></td>
					<td>${mid}</td>
					<td>${updatedate}</td>
				</tr>
			</c:forEach>

	`;
	
	return msg;
}