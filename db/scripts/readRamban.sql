select mitzvahNumber, shihchaNumber, mitzvahNameEn, bookNameEn, chapter, verse
from mitzvos, books, verses, (
	-- Combine Ramban's list with the Rambams, retreiving any information that is missing in the Ramban's from the Rambam's
	select ramban.mitzvahId, ramban.mitzvahNumber, ramban.shihchaNumber,
		(COALESCE(ramban.source, '') || COALESCE(rambam.source, '')) as mergedSource	-- merge source columns, replacing NULL with ''
	from ramban
	left join rambam on ramban.mitzvahId = rambam.mitzvahId	-- Take everything from ramban and add any equivalent rambam's
)
where mitzvos._id = mitzvahId and books._id = verses.bookId and verses._id = mergedSource;