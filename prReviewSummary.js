import { LightningElement, api } from 'lwc';

export default class PrReviewSummary extends LightningElement {

    @api decision;
    @api riskLevel;
    @api summary;

    get isApproved() {
        return this.decision === 'APPROVE';
    }

    get decisionClass() {
        return this.isApproved ? 'approved' : 'review';
    }
}
