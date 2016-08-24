-- begin CECIP_ORDER_LINE
alter table CECIP_ORDER_LINE add constraint FK_CECIP_ORDER_LINE_PRODUCT_ID foreign key (PRODUCT_ID) references CECIP_PRODUCT(ID)^
alter table CECIP_ORDER_LINE add constraint FK_CECIP_ORDER_LINE_ORDER_ID foreign key (ORDER_ID) references CECIP_ORDER(ID)^
create index IDX_CECIP_ORDER_LINE_ORDER on CECIP_ORDER_LINE (ORDER_ID)^
create index IDX_CECIP_ORDER_LINE_PRODUCT on CECIP_ORDER_LINE (PRODUCT_ID)^
-- end CECIP_ORDER_LINE