.class public final Lh3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lr4/bp2;)Z
    .locals 2

    invoke-static {p0}, Lh3/p;->e(Lr4/bp2;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lr4/bp2;->a:Lr4/yo2;

    iget-object p0, p0, Lr4/yo2;->a:Lr4/hp2;

    iget-object p0, p0, Lr4/hp2;->d:Lr4/tt;

    iget-object v0, p0, Lr4/tt;->D:Lr4/jt;

    if-nez v0, :cond_2

    iget-object p0, p0, Lr4/tt;->I:Ljava/lang/String;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lr4/bp2;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lh3/p;->e(Lr4/bp2;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lr4/bp2;->a:Lr4/yo2;

    iget-object p0, p0, Lr4/yo2;->a:Lr4/hp2;

    iget-object p0, p0, Lr4/hp2;->d:Lr4/tt;

    iget-object p0, p0, Lr4/tt;->A:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Lr4/bp2;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lh3/p;->e(Lr4/bp2;)Z

    move-result v0

    const-string v1, "unspecified"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lr4/bp2;->a:Lr4/yo2;

    iget-object p0, p0, Lr4/yo2;->a:Lr4/hp2;

    invoke-static {p0}, Lh3/p;->d(Lr4/hp2;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "requester_type_6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :pswitch_1
    const-string v0, "requester_type_5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :pswitch_2
    const-string v0, "requester_type_4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :pswitch_3
    const-string v0, "requester_type_3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_4
    const-string v0, "requester_type_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_5
    const-string v0, "requester_type_1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_6
    const-string v0, "requester_type_0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    move-object v1, p0

    goto :goto_2

    :pswitch_7
    const-string p0, "6"

    return-object p0

    :pswitch_8
    const-string p0, "5"

    return-object p0

    :pswitch_9
    const-string p0, "4"

    return-object p0

    :pswitch_a
    const-string p0, "3"

    return-object p0

    :pswitch_b
    const-string p0, "2"

    return-object p0

    :pswitch_c
    const-string p0, "1"

    return-object p0

    :pswitch_d
    const-string p0, "0"

    return-object p0

    :goto_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x67ecf68e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public static d(Lr4/hp2;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lr4/hp2;->d:Lr4/tt;

    iget-object p0, p0, Lr4/tt;->d:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const-string p0, "unspecified"

    return-object p0

    :cond_0
    const-string v0, "query_info_type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lr4/bp2;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
