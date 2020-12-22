export class VerseModel {
	constructor(public bookName: string,
				public bookNameEn: string,
				public chapter: number,
				public verse: number,
				public verseText: string,
				public verseTextEn: string) {}
}