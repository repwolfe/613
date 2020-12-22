import { MitzvahModel } from '../mitzvah.model';
import { VerseModel } from '../verse.model';

export class RambamModel extends MitzvahModel {

	constructor(public id: number,
				public mitzvahId: number,
				public mitzvahName: string,
				public mitzvahNameEn: string,
				public asehOrLoSaseh: 'A' | 'L',
				public mitzvahNumber: number,
				public verse: VerseModel,
				public type: 'D' | 'P' | 'M' | 'R',	// D(eos), P(eulah), M(iddos), (dibbu)R
				public whoAppliesId: 'A' | 'M' | 'W' | 'Y' | 'I' | 'L' | 'K' | 'D' | 'G' | 'B' | 'Z',	// A(ll), M(en), W(omen), Y(isroel), (Y)I(sroel Men), L(eviim), K(ohanim), (Kohen Ga)D(ol), (kin)G, B(eis Din), Z(arim)
				public punishmentId: 'N' | 'K' | 'B' | 'S' | 'F' | 'C' | 'H' | 'M',		// N(one), K(ares), (Misah) B(idei Shamayim), S(kilah), (Serei)F(ah), C(henek), H(ereg), M(alkos)
				public madahTitle: string,
				public originalText: string) {
		super(mitzvahId, mitzvahName, mitzvahNameEn, asehOrLoSaseh);
	}
}