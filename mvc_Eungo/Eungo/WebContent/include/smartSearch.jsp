<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="panel panel-default sidebar-menu wow fadeInRight animated">
	<div class="panel-heading">
		<h3 class="panel-title">Smart search</h3>
	</div>
	<div class="panel-body search-widget">
		<form action="<%=request.getContextPath()%>/board?cmd=board_search" method="get" class=" form-inline">
			<fieldset>
				<div class="row">
					<div class="col-xs-12">
					<input type="hidden" name="cmd" value="board_search">
						<input type="text" class="form-control" name="search_text" placeholder="Key word">
					</div>
				</div>
			</fieldset>

			<fieldset>
				<div class="row">
					<div class="col-xs-12">
						<select id="lunchBegins" class="selectpicker"
							data-live-search="true" data-live-search-style="begins"
							title="Select Your Categroy">
							<option>워드프레스</option>
							<option>웹사이트 개발</option>
							<option>쇼핑몰·커머스</option>
							<option>모바일앱·웹</option>
							<option>프로그램 개발</option>
							<option>게임</option>
							<option>데이터베이스</option>
							<option>데이터분석·리포트</option>
							<option>서버 및 기술지원</option>
							<option>QA·테스트</option>
							<option>파일변환</option>
							<option>챗봇</option>
							<option>기타</option>
						</select>
					</div>
				</div>
			</fieldset>
			<h4>옵션</h4>
			<fieldset class="padding-5">
				<div class="row">
					<div class="col-xs-6">
						<div class="checkbox">
							<label> <input type="checkbox"> 접속중
							</label>
						</div>
					</div>

					<div class="col-xs-6">
						<div class="checkbox">
							<label> <input type="checkbox"> 세금계산서
							</label>
						</div>
					</div>
				</div>
			</fieldset>
			<h4>등급</h4>
			<fieldset class="padding-5">
				<div class="row">
					<div class="col-xs-6">
						<div class="checkbox">
							<label> <input type="checkbox"> NEW
							</label>
						</div>
					</div>

					<div class="col-xs-6">
						<div class="checkbox">
							<label> <input type="checkbox"> JUNIOR
							</label>
						</div>
					</div>
				</div>
			</fieldset>

			<fieldset class="padding-5">
				<div class="row">
					<div class="col-xs-6">
						<div class="checkbox">
							<label> <input type="checkbox"> SENIOR
							</label>
						</div>
					</div>
					<div class="col-xs-6">
						<div class="checkbox">
							<label> <input type="checkbox"> SEMIPRO
							</label>
						</div>
					</div>
				</div>
			</fieldset>

			<fieldset class="padding-5">
				<div class="row">
					<div class="col-xs-6">
						<div class="checkbox">
							<label><input type="checkbox"> PRO </label>
						</div>
					</div>
					<div class="col-xs-6">
						<div class="checkbox">
							<label> <input type="checkbox"> MASTER
							</label>
						</div>
					</div>
				</div>
			</fieldset>
			<fieldset>
				<div class="row">
					<div class="col-xs-12">
						<input class="button btn largesearch-btn" value="Search"
							type="submit">
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</div>