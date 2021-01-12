<sch:schema xmlns:str="http://www.sdmx.org/resources/sdmxml/schemas/v2_1/structure" xmlns:com="http://www.sdmx.org/resources/sdmxml/schemas/v2_1/common" xmlns:sch="http://purl.oclc.org/dsdl/schematron">
    <sch:ns uri="urn:ihe:qrph:adx:2015" prefix="adx"/>
    <sch:pattern>
        <sch:title>Validating ADX aggregations</sch:title>
        <sch:p> The ADX xsd schema validates that correct codes are used in code lists. Applying
                this set of rules in addition ensures that datavalues are reported with the correct
                disaggregations. </sch:p>
        <sch:rule context="adx:dataValue[@dataElement='QRPH_ADX_ART5_N_PREG_BF']">
            <sch:assert test="@PREG_BF">@PREG_BF must be present on element QRPH_ADX_ART5_N_PREG_BF</sch:assert>
            <sch:assert test="not(@PMTCT_ART_STATUS)">@PMTCT_ART_STATUS is not permitted on element QRPH_ADX_ART5_N_PREG_BF</sch:assert>
            <sch:assert test="not(@AGE_GROUP)">@AGE_GROUP is not permitted on element QRPH_ADX_ART5_N_PREG_BF</sch:assert>
            <sch:assert test="not(@SEX)">@SEX is not permitted on element QRPH_ADX_ART5_N_PREG_BF</sch:assert>
            <sch:assert test="not(@PMTCT_HIV_STATUS)">@PMTCT_HIV_STATUS is not permitted on element QRPH_ADX_ART5_N_PREG_BF</sch:assert>
            <sch:assert test="not(@HIV_TEST_RESULTS)">@HIV_TEST_RESULTS is not permitted on element QRPH_ADX_ART5_N_PREG_BF</sch:assert>
        </sch:rule>
        <sch:rule context="adx:dataValue[@dataElement='QRPH_ADX_MTCT2_D']">
            <sch:assert test="not(@PREG_BF)">@PREG_BF is not permitted on element QRPH_ADX_MTCT2_D</sch:assert>
            <sch:assert test="not(@PMTCT_ART_STATUS)">@PMTCT_ART_STATUS is not permitted on element QRPH_ADX_MTCT2_D</sch:assert>
            <sch:assert test="not(@AGE_GROUP)">@AGE_GROUP is not permitted on element QRPH_ADX_MTCT2_D</sch:assert>
            <sch:assert test="not(@SEX)">@SEX is not permitted on element QRPH_ADX_MTCT2_D</sch:assert>
            <sch:assert test="not(@PMTCT_HIV_STATUS)">@PMTCT_HIV_STATUS is not permitted on element QRPH_ADX_MTCT2_D</sch:assert>
            <sch:assert test="not(@HIV_TEST_RESULTS)">@HIV_TEST_RESULTS is not permitted on element QRPH_ADX_MTCT2_D</sch:assert>
        </sch:rule>
        <sch:rule context="adx:dataValue[@dataElement='QRPH_ADX_MTCT2_N']">
            <sch:assert test="not(@PREG_BF)">@PREG_BF is not permitted on element QRPH_ADX_MTCT2_N</sch:assert>
            <sch:assert test="@PMTCT_ART_STATUS">@PMTCT_ART_STATUS must be present on element QRPH_ADX_MTCT2_N</sch:assert>
            <sch:assert test="not(@AGE_GROUP)">@AGE_GROUP is not permitted on element QRPH_ADX_MTCT2_N</sch:assert>
            <sch:assert test="not(@SEX)">@SEX is not permitted on element QRPH_ADX_MTCT2_N</sch:assert>
            <sch:assert test="not(@PMTCT_HIV_STATUS)">@PMTCT_HIV_STATUS is not permitted on element QRPH_ADX_MTCT2_N</sch:assert>
            <sch:assert test="not(@HIV_TEST_RESULTS)">@HIV_TEST_RESULTS is not permitted on element QRPH_ADX_MTCT2_N</sch:assert>
        </sch:rule>
        <sch:rule context="adx:dataValue[@dataElement='QRPH_ADX_VLS3_N']">
            <sch:assert test="not(@PREG_BF)">@PREG_BF is not permitted on element QRPH_ADX_VLS3_N</sch:assert>
            <sch:assert test="not(@PMTCT_ART_STATUS)">@PMTCT_ART_STATUS is not permitted on element QRPH_ADX_VLS3_N</sch:assert>
            <sch:assert test="@AGE_GROUP">@AGE_GROUP must be present on element QRPH_ADX_VLS3_N</sch:assert>
            <sch:assert test="@SEX">@SEX must be present on element QRPH_ADX_VLS3_N</sch:assert>
            <sch:assert test="not(@PMTCT_HIV_STATUS)">@PMTCT_HIV_STATUS is not permitted on element QRPH_ADX_VLS3_N</sch:assert>
            <sch:assert test="not(@HIV_TEST_RESULTS)">@HIV_TEST_RESULTS is not permitted on element QRPH_ADX_VLS3_N</sch:assert>
        </sch:rule>
        <sch:rule context="adx:dataValue[@dataElement='QRPH_ADX_MTCT1_D']">
            <sch:assert test="not(@PREG_BF)">@PREG_BF is not permitted on element QRPH_ADX_MTCT1_D</sch:assert>
            <sch:assert test="not(@PMTCT_ART_STATUS)">@PMTCT_ART_STATUS is not permitted on element QRPH_ADX_MTCT1_D</sch:assert>
            <sch:assert test="not(@AGE_GROUP)">@AGE_GROUP is not permitted on element QRPH_ADX_MTCT1_D</sch:assert>
            <sch:assert test="not(@SEX)">@SEX is not permitted on element QRPH_ADX_MTCT1_D</sch:assert>
            <sch:assert test="@PMTCT_HIV_STATUS">@PMTCT_HIV_STATUS must be present on element QRPH_ADX_MTCT1_D</sch:assert>
            <sch:assert test="not(@HIV_TEST_RESULTS)">@HIV_TEST_RESULTS is not permitted on element QRPH_ADX_MTCT1_D</sch:assert>
        </sch:rule>
        <sch:rule context="adx:dataValue[@dataElement='QRPH_ADX_ART1_N']">
            <sch:assert test="not(@PREG_BF)">@PREG_BF is not permitted on element QRPH_ADX_ART1_N</sch:assert>
            <sch:assert test="not(@PMTCT_ART_STATUS)">@PMTCT_ART_STATUS is not permitted on element QRPH_ADX_ART1_N</sch:assert>
            <sch:assert test="@AGE_GROUP">@AGE_GROUP must be present on element QRPH_ADX_ART1_N</sch:assert>
            <sch:assert test="@SEX">@SEX must be present on element QRPH_ADX_ART1_N</sch:assert>
            <sch:assert test="not(@PMTCT_HIV_STATUS)">@PMTCT_HIV_STATUS is not permitted on element QRPH_ADX_ART1_N</sch:assert>
            <sch:assert test="not(@HIV_TEST_RESULTS)">@HIV_TEST_RESULTS is not permitted on element QRPH_ADX_ART1_N</sch:assert>
        </sch:rule>
        <sch:rule context="adx:dataValue[@dataElement='QRPH_ADX_ART5_N']">
            <sch:assert test="not(@PREG_BF)">@PREG_BF is not permitted on element QRPH_ADX_ART5_N</sch:assert>
            <sch:assert test="not(@PMTCT_ART_STATUS)">@PMTCT_ART_STATUS is not permitted on element QRPH_ADX_ART5_N</sch:assert>
            <sch:assert test="@AGE_GROUP">@AGE_GROUP must be present on element QRPH_ADX_ART5_N</sch:assert>
            <sch:assert test="@SEX">@SEX must be present on element QRPH_ADX_ART5_N</sch:assert>
            <sch:assert test="not(@PMTCT_HIV_STATUS)">@PMTCT_HIV_STATUS is not permitted on element QRPH_ADX_ART5_N</sch:assert>
            <sch:assert test="not(@HIV_TEST_RESULTS)">@HIV_TEST_RESULTS is not permitted on element QRPH_ADX_ART5_N</sch:assert>
        </sch:rule>
        <sch:rule context="adx:dataValue[@dataElement='QRPH_ADX_HTS2_N']">
            <sch:assert test="not(@PREG_BF)">@PREG_BF is not permitted on element QRPH_ADX_HTS2_N</sch:assert>
            <sch:assert test="not(@PMTCT_ART_STATUS)">@PMTCT_ART_STATUS is not permitted on element QRPH_ADX_HTS2_N</sch:assert>
            <sch:assert test="@AGE_GROUP">@AGE_GROUP must be present on element QRPH_ADX_HTS2_N</sch:assert>
            <sch:assert test="@SEX">@SEX must be present on element QRPH_ADX_HTS2_N</sch:assert>
            <sch:assert test="not(@PMTCT_HIV_STATUS)">@PMTCT_HIV_STATUS is not permitted on element QRPH_ADX_HTS2_N</sch:assert>
            <sch:assert test="@HIV_TEST_RESULTS">@HIV_TEST_RESULTS must be present on element QRPH_ADX_HTS2_N</sch:assert>
        </sch:rule>
        <sch:rule context="adx:dataValue[@dataElement='QRPH_ADX_ART3_N']">
            <sch:assert test="not(@PREG_BF)">@PREG_BF is not permitted on element QRPH_ADX_ART3_N</sch:assert>
            <sch:assert test="not(@PMTCT_ART_STATUS)">@PMTCT_ART_STATUS is not permitted on element QRPH_ADX_ART3_N</sch:assert>
            <sch:assert test="@AGE_GROUP">@AGE_GROUP must be present on element QRPH_ADX_ART3_N</sch:assert>
            <sch:assert test="@SEX">@SEX must be present on element QRPH_ADX_ART3_N</sch:assert>
            <sch:assert test="not(@PMTCT_HIV_STATUS)">@PMTCT_HIV_STATUS is not permitted on element QRPH_ADX_ART3_N</sch:assert>
            <sch:assert test="not(@HIV_TEST_RESULTS)">@HIV_TEST_RESULTS is not permitted on element QRPH_ADX_ART3_N</sch:assert>
        </sch:rule>
        <sch:rule context="adx:dataValue[@dataElement='QRPH_ADX_MTCT1_N']">
            <sch:assert test="not(@PREG_BF)">@PREG_BF is not permitted on element QRPH_ADX_MTCT1_N</sch:assert>
            <sch:assert test="not(@PMTCT_ART_STATUS)">@PMTCT_ART_STATUS is not permitted on element QRPH_ADX_MTCT1_N</sch:assert>
            <sch:assert test="not(@AGE_GROUP)">@AGE_GROUP is not permitted on element QRPH_ADX_MTCT1_N</sch:assert>
            <sch:assert test="not(@SEX)">@SEX is not permitted on element QRPH_ADX_MTCT1_N</sch:assert>
            <sch:assert test="@PMTCT_HIV_STATUS">@PMTCT_HIV_STATUS must be present on element QRPH_ADX_MTCT1_N</sch:assert>
            <sch:assert test="not(@HIV_TEST_RESULTS)">@HIV_TEST_RESULTS is not permitted on element QRPH_ADX_MTCT1_N</sch:assert>
        </sch:rule>
        <sch:rule context="adx:dataValue[@dataElement='QRPH_ADX_VLS3_D']">
            <sch:assert test="not(@PREG_BF)">@PREG_BF is not permitted on element QRPH_ADX_VLS3_D</sch:assert>
            <sch:assert test="not(@PMTCT_ART_STATUS)">@PMTCT_ART_STATUS is not permitted on element QRPH_ADX_VLS3_D</sch:assert>
            <sch:assert test="@AGE_GROUP">@AGE_GROUP must be present on element QRPH_ADX_VLS3_D</sch:assert>
            <sch:assert test="@SEX">@SEX must be present on element QRPH_ADX_VLS3_D</sch:assert>
            <sch:assert test="not(@PMTCT_HIV_STATUS)">@PMTCT_HIV_STATUS is not permitted on element QRPH_ADX_VLS3_D</sch:assert>
            <sch:assert test="not(@HIV_TEST_RESULTS)">@HIV_TEST_RESULTS is not permitted on element QRPH_ADX_VLS3_D</sch:assert>
        </sch:rule>
        <sch:rule context="adx:dataValue[@dataElement='QRPH_ADX_ART1_N_PREG_BF']">
            <sch:assert test="@PREG_BF">@PREG_BF must be present on element QRPH_ADX_ART1_N_PREG_BF</sch:assert>
            <sch:assert test="not(@PMTCT_ART_STATUS)">@PMTCT_ART_STATUS is not permitted on element QRPH_ADX_ART1_N_PREG_BF</sch:assert>
            <sch:assert test="not(@AGE_GROUP)">@AGE_GROUP is not permitted on element QRPH_ADX_ART1_N_PREG_BF</sch:assert>
            <sch:assert test="not(@SEX)">@SEX is not permitted on element QRPH_ADX_ART1_N_PREG_BF</sch:assert>
            <sch:assert test="not(@PMTCT_HIV_STATUS)">@PMTCT_HIV_STATUS is not permitted on element QRPH_ADX_ART1_N_PREG_BF</sch:assert>
            <sch:assert test="not(@HIV_TEST_RESULTS)">@HIV_TEST_RESULTS is not permitted on element QRPH_ADX_ART1_N_PREG_BF</sch:assert>
        </sch:rule>
        <sch:rule context="adx:dataValue[@dataElement='QRPH_ADX_ART5_D']">
            <sch:assert test="not(@PREG_BF)">@PREG_BF is not permitted on element QRPH_ADX_ART5_D</sch:assert>
            <sch:assert test="not(@PMTCT_ART_STATUS)">@PMTCT_ART_STATUS is not permitted on element QRPH_ADX_ART5_D</sch:assert>
            <sch:assert test="@AGE_GROUP">@AGE_GROUP must be present on element QRPH_ADX_ART5_D</sch:assert>
            <sch:assert test="@SEX">@SEX must be present on element QRPH_ADX_ART5_D</sch:assert>
            <sch:assert test="not(@PMTCT_HIV_STATUS)">@PMTCT_HIV_STATUS is not permitted on element QRPH_ADX_ART5_D</sch:assert>
            <sch:assert test="not(@HIV_TEST_RESULTS)">@HIV_TEST_RESULTS is not permitted on element QRPH_ADX_ART5_D</sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>

