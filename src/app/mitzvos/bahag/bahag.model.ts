import { MitzvahModel } from './../mitzvah.model';

export interface BahagModel extends MitzvahModel {
    mitzvahId: number,
    mitzvahNumber: number,
    mitzvahTitle: string,
    categoryNum: number,
    enNote: string
}