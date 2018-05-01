package com.eb.pcshop.manager.pojo.po;

import java.util.ArrayList;
import java.util.List;

public class NewsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public NewsExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andNidIsNull() {
            addCriterion("nid is null");
            return (Criteria) this;
        }

        public Criteria andNidIsNotNull() {
            addCriterion("nid is not null");
            return (Criteria) this;
        }

        public Criteria andNidEqualTo(Integer value) {
            addCriterion("nid =", value, "nid");
            return (Criteria) this;
        }

        public Criteria andNidNotEqualTo(Integer value) {
            addCriterion("nid <>", value, "nid");
            return (Criteria) this;
        }

        public Criteria andNidGreaterThan(Integer value) {
            addCriterion("nid >", value, "nid");
            return (Criteria) this;
        }

        public Criteria andNidGreaterThanOrEqualTo(Integer value) {
            addCriterion("nid >=", value, "nid");
            return (Criteria) this;
        }

        public Criteria andNidLessThan(Integer value) {
            addCriterion("nid <", value, "nid");
            return (Criteria) this;
        }

        public Criteria andNidLessThanOrEqualTo(Integer value) {
            addCriterion("nid <=", value, "nid");
            return (Criteria) this;
        }

        public Criteria andNidIn(List<Integer> values) {
            addCriterion("nid in", values, "nid");
            return (Criteria) this;
        }

        public Criteria andNidNotIn(List<Integer> values) {
            addCriterion("nid not in", values, "nid");
            return (Criteria) this;
        }

        public Criteria andNidBetween(Integer value1, Integer value2) {
            addCriterion("nid between", value1, value2, "nid");
            return (Criteria) this;
        }

        public Criteria andNidNotBetween(Integer value1, Integer value2) {
            addCriterion("nid not between", value1, value2, "nid");
            return (Criteria) this;
        }

        public Criteria andNnameIsNull() {
            addCriterion("nname is null");
            return (Criteria) this;
        }

        public Criteria andNnameIsNotNull() {
            addCriterion("nname is not null");
            return (Criteria) this;
        }

        public Criteria andNnameEqualTo(String value) {
            addCriterion("nname =", value, "nname");
            return (Criteria) this;
        }

        public Criteria andNnameNotEqualTo(String value) {
            addCriterion("nname <>", value, "nname");
            return (Criteria) this;
        }

        public Criteria andNnameGreaterThan(String value) {
            addCriterion("nname >", value, "nname");
            return (Criteria) this;
        }

        public Criteria andNnameGreaterThanOrEqualTo(String value) {
            addCriterion("nname >=", value, "nname");
            return (Criteria) this;
        }

        public Criteria andNnameLessThan(String value) {
            addCriterion("nname <", value, "nname");
            return (Criteria) this;
        }

        public Criteria andNnameLessThanOrEqualTo(String value) {
            addCriterion("nname <=", value, "nname");
            return (Criteria) this;
        }

        public Criteria andNnameLike(String value) {
            addCriterion("nname like", value, "nname");
            return (Criteria) this;
        }

        public Criteria andNnameNotLike(String value) {
            addCriterion("nname not like", value, "nname");
            return (Criteria) this;
        }

        public Criteria andNnameIn(List<String> values) {
            addCriterion("nname in", values, "nname");
            return (Criteria) this;
        }

        public Criteria andNnameNotIn(List<String> values) {
            addCriterion("nname not in", values, "nname");
            return (Criteria) this;
        }

        public Criteria andNnameBetween(String value1, String value2) {
            addCriterion("nname between", value1, value2, "nname");
            return (Criteria) this;
        }

        public Criteria andNnameNotBetween(String value1, String value2) {
            addCriterion("nname not between", value1, value2, "nname");
            return (Criteria) this;
        }

        public Criteria andNflagIsNull() {
            addCriterion("nflag is null");
            return (Criteria) this;
        }

        public Criteria andNflagIsNotNull() {
            addCriterion("nflag is not null");
            return (Criteria) this;
        }

        public Criteria andNflagEqualTo(Integer value) {
            addCriterion("nflag =", value, "nflag");
            return (Criteria) this;
        }

        public Criteria andNflagNotEqualTo(Integer value) {
            addCriterion("nflag <>", value, "nflag");
            return (Criteria) this;
        }

        public Criteria andNflagGreaterThan(Integer value) {
            addCriterion("nflag >", value, "nflag");
            return (Criteria) this;
        }

        public Criteria andNflagGreaterThanOrEqualTo(Integer value) {
            addCriterion("nflag >=", value, "nflag");
            return (Criteria) this;
        }

        public Criteria andNflagLessThan(Integer value) {
            addCriterion("nflag <", value, "nflag");
            return (Criteria) this;
        }

        public Criteria andNflagLessThanOrEqualTo(Integer value) {
            addCriterion("nflag <=", value, "nflag");
            return (Criteria) this;
        }

        public Criteria andNflagIn(List<Integer> values) {
            addCriterion("nflag in", values, "nflag");
            return (Criteria) this;
        }

        public Criteria andNflagNotIn(List<Integer> values) {
            addCriterion("nflag not in", values, "nflag");
            return (Criteria) this;
        }

        public Criteria andNflagBetween(Integer value1, Integer value2) {
            addCriterion("nflag between", value1, value2, "nflag");
            return (Criteria) this;
        }

        public Criteria andNflagNotBetween(Integer value1, Integer value2) {
            addCriterion("nflag not between", value1, value2, "nflag");
            return (Criteria) this;
        }

        public Criteria andNdescIsNull() {
            addCriterion("ndesc is null");
            return (Criteria) this;
        }

        public Criteria andNdescIsNotNull() {
            addCriterion("ndesc is not null");
            return (Criteria) this;
        }

        public Criteria andNdescEqualTo(String value) {
            addCriterion("ndesc =", value, "ndesc");
            return (Criteria) this;
        }

        public Criteria andNdescNotEqualTo(String value) {
            addCriterion("ndesc <>", value, "ndesc");
            return (Criteria) this;
        }

        public Criteria andNdescGreaterThan(String value) {
            addCriterion("ndesc >", value, "ndesc");
            return (Criteria) this;
        }

        public Criteria andNdescGreaterThanOrEqualTo(String value) {
            addCriterion("ndesc >=", value, "ndesc");
            return (Criteria) this;
        }

        public Criteria andNdescLessThan(String value) {
            addCriterion("ndesc <", value, "ndesc");
            return (Criteria) this;
        }

        public Criteria andNdescLessThanOrEqualTo(String value) {
            addCriterion("ndesc <=", value, "ndesc");
            return (Criteria) this;
        }

        public Criteria andNdescLike(String value) {
            addCriterion("ndesc like", value, "ndesc");
            return (Criteria) this;
        }

        public Criteria andNdescNotLike(String value) {
            addCriterion("ndesc not like", value, "ndesc");
            return (Criteria) this;
        }

        public Criteria andNdescIn(List<String> values) {
            addCriterion("ndesc in", values, "ndesc");
            return (Criteria) this;
        }

        public Criteria andNdescNotIn(List<String> values) {
            addCriterion("ndesc not in", values, "ndesc");
            return (Criteria) this;
        }

        public Criteria andNdescBetween(String value1, String value2) {
            addCriterion("ndesc between", value1, value2, "ndesc");
            return (Criteria) this;
        }

        public Criteria andNdescNotBetween(String value1, String value2) {
            addCriterion("ndesc not between", value1, value2, "ndesc");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}