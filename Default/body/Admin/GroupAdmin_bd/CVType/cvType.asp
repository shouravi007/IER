  <label>CV Type</label>
 
      <select name="rdoCVType" id="rdoCVType" class="text form-control">
          <option value="All" selected="selected">All</option>
          <option value="Shortlisted"<%If strCvtype = "Shortlisted" Then %> selected="selected"<%End If%>>ShortListed</option>
          <option value="NotShortListed"<%If strCvtype = "NotShortListed" Then %> selected="selected"<%End If%>>Not ShortListed</option>
        </select>