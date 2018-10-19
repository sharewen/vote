package com.indihx.system.vo;

public class CodeDataVo extends BaseVo {
	//字典类型编码
	private String codeNo;
	//字典代码
	private String codeKey;
	//字段名称
    private String fieldName;
    //字典类型说明
    private String codeName;
    //字典名称
    private String codeVal;
    //创建时间
    private String tmSmp;
    //字典代码
    private String codeKeyBy;
    //字典类型编码
    private String codeNoBy;

    public String getCodeNoBy() {
		return codeNoBy;
	}

	public void setCodeNoBy(String codeNoBy) {
		this.codeNoBy = codeNoBy;
	}

	public String getCodeKeyBy() {
		return codeKeyBy;
	}

	public void setCodeKeyBy(String codeKeyBy) {
		this.codeKeyBy = codeKeyBy;
	}

	public String getFieldName() {
        return fieldName;
    }

    public void setFieldName(String fieldName) {
        this.fieldName = fieldName == null ? null : fieldName.trim();
    }

    public String getCodeName() {
        return codeName;
    }

    public void setCodeName(String codeName) {
        this.codeName = codeName == null ? null : codeName.trim();
    }

    public String getCodeVal() {
        return codeVal;
    }

    public void setCodeVal(String codeVal) {
        this.codeVal = codeVal == null ? null : codeVal.trim();
    }

    public String getTmSmp() {
        return tmSmp;
    }

    public void setTmSmp(String tmSmp) {
        this.tmSmp = tmSmp == null ? null : tmSmp.trim();
    }

	public String getCodeNo() {
		return codeNo;
	}

	public void setCodeNo(String codeNo) {
		this.codeNo = codeNo;
	}

	public String getCodeKey() {
		return codeKey;
	}

	public void setCodeKey(String codeKey) {
		this.codeKey = codeKey;
	}
    
}