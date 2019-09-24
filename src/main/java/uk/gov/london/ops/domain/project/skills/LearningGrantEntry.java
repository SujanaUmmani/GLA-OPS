/**
 * Copyright (c) Greater London Authority, 2016.
 *
 * This source code is licensed under the Open Government Licence 3.0.
 *
 * http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/
 */
package uk.gov.london.ops.domain.project.skills;

import static uk.gov.london.ops.payment.LedgerStatus.Cleared;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Transient;
import uk.gov.london.common.GlaUtils;
import uk.gov.london.common.skills.SkillsGrantType;
import uk.gov.london.ops.EnvironmentUtils;
import uk.gov.london.ops.payment.PaymentSummary;

@Entity(name = "learning_grant_entry")
public class LearningGrantEntry {

    private static final String LEARNING_GRANT_ENTRY_STATUS_PROCESSING  = "Processing";
    private static final String LEARNING_GRANT_ENTRY_STATUS_PAID        = "Paid";
    public static final String LEARNING_GRANT_ENTRY_STATUS_PARTLY_PAID = "Partly Paid";
    public static final String LEARNING_GRANT_ENTRY_STATUS_OVER_PAID = "Over Paid";

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "learning_grant_entry_seq_gen")
    @SequenceGenerator(name = "learning_grant_entry_seq_gen", sequenceName = "learning_grant_entry_seq", initialValue = 10000, allocationSize = 1)
    private Integer id;

    @Column(name = "original_id")
    private Integer originalId;

    @Column(name="type")
    @Enumerated(EnumType.STRING)
    private LearningGrantEntryType type = LearningGrantEntryType.DELIVERY;

    @Column(name = "academic_year")
    private Integer academicYear;

    @Column(name = "period")
    private Integer period;

    @Column(name = "actual_month")
    private Integer actualMonth;

    @Column(name = "actual_year")
    private Integer actualYear;

    @Column(name = "allocation")
    private BigDecimal allocation;

    @Column(name = "percentage")
    private BigDecimal percentage;

    @Column(name = "cumulative_allocation")
    private BigDecimal cumulativeAllocation;

    @Column(name = "cumulative_earnings")
    private BigDecimal cumulativeEarnings;

    @Column(name = "cumulative_payment")
    private BigDecimal cumulativePayment;

    @Column(name = "payment_due")
    private BigDecimal paymentDue;

    @Column(name = "payment_date")
    private OffsetDateTime paymentDate;

    @Transient
    private SkillsGrantType grantType;

    @Transient
    private List<PaymentSummary> payments = new ArrayList<>();

    public LearningGrantEntry() {}

    public LearningGrantEntry(Integer academicYear, Integer period, LearningGrantEntryType type) {
        this.academicYear = academicYear;
        this.period = period;
        this.actualMonth = ((period + 6) % 12) + 1;
        this.actualYear = this.actualMonth < 8 ? academicYear + 1 : academicYear;
        this.type = type;
    }

    public LearningGrantEntry(Integer academicYear, Integer period, LearningGrantEntryType type, BigDecimal allocation) {
        this(academicYear, period, type);
        this.allocation = allocation;
    }

    public LearningGrantEntry clone() {
        LearningGrantEntry clone = new LearningGrantEntry();
        clone.setType(this.type);
        clone.setOriginalId(this.getOriginalId());
        clone.setAcademicYear(this.academicYear);
        clone.setActualYear(this.actualYear);
        clone.setPeriod(this.period);
        clone.setActualMonth(this.actualMonth);
        clone.setAllocation(this.allocation);
        clone.setPercentage(this.percentage);
        clone.setCumulativeAllocation(this.cumulativeAllocation);
        clone.setCumulativeEarnings(this.cumulativeEarnings);
        clone.setCumulativePayment(this.cumulativePayment);
        clone.setPaymentDue(this.paymentDue);
        clone.setPaymentDate(this.paymentDate);
        return clone;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getAcademicYear() {
        return academicYear;
    }

    public void setAcademicYear(Integer academicYear) {
        this.academicYear = academicYear;
    }

    public Integer getPeriod() {
        return period;
    }

    public void setPeriod(Integer period) {
        this.period = period;
    }

    public BigDecimal getAllocation() {
        return allocation;
    }

    public void setAllocation(BigDecimal allocation) {
        this.allocation = allocation;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        LearningGrantEntry that = (LearningGrantEntry) o;
        return Objects.equals(academicYear, that.academicYear) &&
                Objects.equals(period, that.period) &&
                Objects.equals(allocation, that.allocation) &&
                Objects.equals(type, that.type);
    }

    @Override
    public int hashCode() {
        return Objects.hash(type, academicYear, period, allocation);
    }

    public LearningGrantEntryType getType() {
        return type;
    }

    public BigDecimal getPercentage() {
        return percentage;
    }

    public void setPercentage(BigDecimal percentage) {
        this.percentage = percentage;
    }

    public BigDecimal getCumulativeAllocation() {
        return cumulativeAllocation;
    }

    public void setCumulativeAllocation(BigDecimal cumulativeAllocation) {
        this.cumulativeAllocation = cumulativeAllocation;
    }

    public BigDecimal getCumulativeEarnings() {
        return cumulativeEarnings;
    }

    public void setCumulativeEarnings(BigDecimal cumulativeEarnings) {
        this.cumulativeEarnings = cumulativeEarnings;
    }

    public BigDecimal getCumulativePayment() {
        return cumulativePayment;
    }

    public void setCumulativePayment(BigDecimal cumulativePayment) {
        this.cumulativePayment = cumulativePayment;
    }

    public BigDecimal getPaymentDue() {
        if (paymentDue != null) {
            return paymentDue.setScale(2, BigDecimal.ROUND_HALF_UP);
        }
        return null;
    }

    public void setPaymentDue(BigDecimal paymentDue) {
        this.paymentDue = paymentDue;
    }

    public OffsetDateTime getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(OffsetDateTime paymentDate) {
        this.paymentDate = paymentDate;
    }

    public Integer getActualMonth() {
        return actualMonth;
    }

    public void setActualMonth(Integer actualMonth) {
        this.actualMonth = actualMonth;
    }

    public Integer getActualYear() {
        return actualYear;
    }

    public void setActualYear(Integer actualYear) {
        this.actualYear = actualYear;
    }

    public void setType(LearningGrantEntryType type) {
        this.type = type;
    }

    public SkillsGrantType getGrantType() {
        return grantType;
    }

    public void setGrantType(SkillsGrantType grantType) {
        this.grantType = grantType;
    }

    public List<PaymentSummary> getPayments() {
        return payments;
    }

    public void setPayments(List<PaymentSummary> payments) {
        this.payments = payments;
    }

    public Integer getOriginalId() {
        if (originalId == null) {
            return id;
        }
        return originalId;
    }

    public void setOriginalId(Integer originalId) {
        this.originalId = originalId;
    }

    public boolean isMissedPayment() {
        OffsetDateTime now = EnvironmentUtils.now();
        return SkillsGrantType.AEB_GRANT.equals(grantType) && paymentDate != null && paymentDue != null && paymentDate.isBefore(now);
    }

    public boolean isClaimable(){
        if (SkillsGrantType.AEB_GRANT.equals(grantType)) {
            return isMissedPayment();
        }
        else {
            OffsetDateTime now = EnvironmentUtils.now();

            int currentMonth = now.getMonthValue();
            int currentYear = now.getYear();
            return actualYear < currentYear || (currentYear == actualYear && currentMonth >= actualMonth);
        }
    }

    public String getPaymentStatus() {
        if (hasPayments()) {
            if (getPaymentDue() != null && getPaymentDue().compareTo(getPaymentsTotal()) > 0) {
                return LEARNING_GRANT_ENTRY_STATUS_PARTLY_PAID;
            }
            else if (getPaymentDue() != null && getPaymentDue().compareTo(getPaymentsTotal()) < 0) {
                return LEARNING_GRANT_ENTRY_STATUS_OVER_PAID;
            }
            else if (payments.stream().allMatch(p -> Cleared.equals(p.getLedgerStatus()))) {
                return LEARNING_GRANT_ENTRY_STATUS_PAID;
            }
            else {
                return LEARNING_GRANT_ENTRY_STATUS_PROCESSING;
            }
        }
        else {
            return null;
        }
    }

    public BigDecimal getPaymentsTotal() {
        if (!hasPayments()) {
            return null;
        }

        BigDecimal totalPaid = BigDecimal.ZERO;

        for (PaymentSummary payment: payments) {
            if (!payment.getInterestPayment()) {
                totalPaid = totalPaid.add(payment.getValue());
            }
        }

        return totalPaid;
    }

    public boolean hasPayments() {
        return payments != null && !payments.isEmpty();
    }

    public String buildPaymentSubCategory() {
        return LocalDate.of(actualYear, actualMonth, 1).format(DateTimeFormatter.ofPattern("MMM")) + " " + GlaUtils.getFinancialYearFromYear(academicYear);
    }

}
