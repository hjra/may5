<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<div class="table-wrapper">
	<table id="tech-companies" class="enhanced">
		<thead>
			<tr>
				<th class="persist essential" id="co-0">Company</th>
				<th class="essential" id="co-1">Last Trade</th>
				<th class="optional" id="co-2">Trade Time</th>
				<th class="essential" id="co-3">Change</th>
				<th class="optional" id="co-4" style="display: none;">Prev
					Close</th>
				<th class="optional" id="co-5" style="display: none;">Open</th>
				<th id="co-6" style="display: none;">Bid</th>
				<th id="co-7">Ask</th>
				<th id="co-8">1y Target Est</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th headers="co-0" class="persist essential">GOOG <span
					class="co-name">Google Inc.</span></th>
				<td headers="co-1" class="essential">597.74</td>
				<td headers="co-2" class="optional">12:12PM</td>
				<td headers="co-3" class="essential">14.81 (2.54%)</td>
				<td headers="co-4" class="optional" style="display: none;">582.93</td>
				<td headers="co-5" class="optional" style="display: none;">597.95</td>
				<td headers="co-6" style="display: none;">597.73 x 100</td>
				<td headers="co-7">597.91 x 300</td>
				<td headers="co-8">731.10</td>
			</tr>
			<tr>
				<th headers="co-0" class="persist essential">AAPL <span
					class="co-name">Apple Inc.</span></th>
				<td headers="co-1" class="essential">378.94</td>
				<td headers="co-2" class="optional">12:22PM</td>
				<td headers="co-3" class="essential">5.74 (1.54%)</td>
				<td headers="co-4" class="optional" style="display: none;">373.20</td>
				<td headers="co-5" class="optional" style="display: none;">381.02</td>
				<td headers="co-6" style="display: none;">378.92 x 300</td>
				<td headers="co-7">378.99 x 100</td>
				<td headers="co-8">505.94</td>
			</tr>
			<tr>
				<th headers="co-0" class="persist essential">AMZN <span
					class="co-name">Amazon.com Inc.</span></th>
				<td headers="co-1" class="essential">191.55</td>
				<td headers="co-2" class="optional">12:23PM</td>
				<td headers="co-3" class="essential">3.16 (1.68%)</td>
				<td headers="co-4" class="optional" style="display: none;">188.39</td>
				<td headers="co-5" class="optional" style="display: none;">194.99</td>
				<td headers="co-6" style="display: none;">191.52 x 300</td>
				<td headers="co-7">191.58 x 100</td>
				<td headers="co-8">240.32</td>
			</tr>
			<tr>
				<th headers="co-0" class="persist essential">ORCL <span
					class="co-name">Oracle Corporation</span></th>
				<td headers="co-1" class="essential">31.15</td>
				<td headers="co-2" class="optional">12:44PM</td>
				<td headers="co-3" class="essential">1.41 (4.72%)</td>
				<td headers="co-4" class="optional" style="display: none;">29.74</td>
				<td headers="co-5" class="optional" style="display: none;">30.67</td>
				<td headers="co-6" style="display: none;">31.14 x 6500</td>
				<td headers="co-7">31.15 x 3200</td>
				<td headers="co-8">36.11</td>
			</tr>
			<tr>
				<th headers="co-0" class="persist essential">MSFT <span
					class="co-name">Microsoft Corporation</span></th>
				<td headers="co-1" class="essential">25.50</td>
				<td headers="co-2" class="optional">12:27PM</td>
				<td headers="co-3" class="essential">0.66 (2.67%)</td>
				<td headers="co-4" class="optional" style="display: none;">24.84</td>
				<td headers="co-5" class="optional" style="display: none;">25.37</td>
				<td headers="co-6" style="display: none;">25.50 x 71100</td>
				<td headers="co-7">25.51 x 17800</td>
				<td headers="co-8">31.50</td>
			</tr>
			<tr>
				<th headers="co-0" class="persist essential">CSCO <span
					class="co-name">Cisco Systems, Inc.</span></th>
				<td headers="co-1" class="essential">18.65</td>
				<td headers="co-2" class="optional">12:45PM</td>
				<td headers="co-3" class="essential">0.97 (5.49%)</td>
				<td headers="co-4" class="optional" style="display: none;">17.68</td>
				<td headers="co-5" class="optional" style="display: none;">18.23</td>
				<td headers="co-6" style="display: none;">18.65 x 10300</td>
				<td headers="co-7">18.66 x 24000</td>
				<td headers="co-8">21.12</td>
			</tr>
			<tr>
				<th headers="co-0" class="persist essential">YHOO <span
					class="co-name">Yahoo! Inc.</span></th>
				<td headers="co-1" class="essential">15.81</td>
				<td headers="co-2" class="optional">12:25PM</td>
				<td headers="co-3" class="essential">0.11 (0.67%)</td>
				<td headers="co-4" class="optional" style="display: none;">15.70</td>
				<td headers="co-5" class="optional" style="display: none;">15.94</td>
				<td headers="co-6" style="display: none;">15.79 x 6100</td>
				<td headers="co-7">15.80 x 17000</td>
				<td headers="co-8">18.16</td>
			</tr>
		</tbody>
	</table>

</div>


<script src="resources/script/tableSetting.js"></script>
<script type="text/javascript"></script>
