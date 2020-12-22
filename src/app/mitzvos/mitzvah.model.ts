export class MitzvahModel {
	constructor(public id: number,
				public mitzvahName: string,
				public mitzvahNameEn: string,
				public asehOrLoSaseh: 'A' | 'L' ) {}
}