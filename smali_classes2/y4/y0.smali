.class public final Ly4/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly4/x0;",
            ">;"
        }
    .end annotation
.end field

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Ly4/y0;->f:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ly4/y0;->d:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ly4/y0;->e:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/util/JsonReader;)Ly4/y0;
    .locals 12

    new-instance v0, Ly4/y0;

    invoke-direct {v0}, Ly4/y0;-><init>()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, -0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "consent_form_payload"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_1
    const-string v2, "request_info_keys"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_2
    const-string v2, "actions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_3
    const-string v2, "consent_form_base_url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_4
    const-string v2, "error_message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_5
    const-string v2, "consent_signal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v1, -0x1

    :goto_2
    if-eqz v1, :cond_16

    if-eq v1, v9, :cond_15

    if-eq v1, v8, :cond_14

    if-eq v1, v7, :cond_13

    if-eq v1, v5, :cond_11

    if-eq v1, v4, :cond_1

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Ly4/y0;->e:Ljava/util/List;

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Ly4/x0;

    invoke-direct {v1}, Ly4/x0;-><init>()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x7d8028f6

    if-eq v4, v5, :cond_3

    const v5, 0x5e663ba3

    if-eq v4, v5, :cond_2

    goto :goto_5

    :cond_2
    const-string v4, "action_type"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_6

    :cond_3
    const-string v4, "args_json"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_6

    :cond_4
    :goto_5
    const/4 v2, -0x1

    :goto_6
    if-eqz v2, :cond_6

    if-eq v2, v9, :cond_5

    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ly4/x0;->a:Ljava/lang/String;

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x3d3be2d

    if-eq v4, v5, :cond_9

    const v5, 0x4f05fbf

    if-eq v4, v5, :cond_8

    const v5, 0x6ea5670e

    if-eq v4, v5, :cond_7

    goto :goto_7

    :cond_7
    const-string v4, "UNKNOWN_ACTION_TYPE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    goto :goto_8

    :cond_8
    const-string v4, "WRITE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_8

    :cond_9
    const-string v4, "CLEAR"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x2

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v4, -0x1

    :goto_8
    if-eqz v4, :cond_e

    if-eq v4, v9, :cond_d

    if-eq v4, v8, :cond_c

    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.Action.ActionTypefrom: "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_9
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    const/4 v2, 0x3

    goto :goto_a

    :cond_d
    const/4 v2, 0x2

    goto :goto_a

    :cond_e
    const/4 v2, 0x1

    :goto_a
    iput v2, v1, Ly4/x0;->b:I

    goto/16 :goto_4

    :cond_f
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    iget-object v2, v0, Ly4/y0;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_10
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_0

    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Ly4/y0;->d:Ljava/util/List;

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_b
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Ly4/y0;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_12
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ly4/y0;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ly4/y0;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ly4/y0;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_16
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v10, 0x7

    const/4 v11, 0x6

    sparse-switch v2, :sswitch_data_1

    goto :goto_c

    :sswitch_6
    const-string v2, "CONSENT_SIGNAL_NOT_REQUIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v3, 0x5

    goto :goto_d

    :sswitch_7
    const-string v2, "CONSENT_SIGNAL_PERSONALIZED_ADS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v3, 0x1

    goto :goto_d

    :sswitch_8
    const-string v2, "CONSENT_SIGNAL_SUFFICIENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v3, 0x3

    goto :goto_d

    :sswitch_9
    const-string v2, "CONSENT_SIGNAL_PUBLISHER_MISCONFIGURATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v3, 0x7

    goto :goto_d

    :sswitch_a
    const-string v2, "CONSENT_SIGNAL_NON_PERSONALIZED_ADS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v3, 0x2

    goto :goto_d

    :sswitch_b
    const-string v2, "CONSENT_SIGNAL_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_d

    :sswitch_c
    const-string v2, "CONSENT_SIGNAL_ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v3, 0x6

    goto :goto_d

    :sswitch_d
    const-string v2, "CONSENT_SIGNAL_COLLECT_CONSENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v3, 0x4

    goto :goto_d

    :cond_17
    :goto_c
    const/4 v3, -0x1

    :goto_d
    packed-switch v3, :pswitch_data_0

    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.ConsentSignalfrom: "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :pswitch_0
    const/16 v4, 0x8

    goto :goto_e

    :pswitch_1
    const/4 v4, 0x7

    goto :goto_e

    :pswitch_2
    const/4 v4, 0x6

    goto :goto_e

    :pswitch_3
    const/4 v4, 0x4

    goto :goto_e

    :pswitch_4
    const/4 v4, 0x3

    goto :goto_e

    :pswitch_5
    const/4 v4, 0x2

    goto :goto_e

    :pswitch_6
    const/4 v4, 0x1

    :goto_e
    :pswitch_7
    iput v4, v0, Ly4/y0;->f:I

    goto/16 :goto_0

    :cond_18
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_f
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x774ac593 -> :sswitch_5
        -0x738f0f30 -> :sswitch_4
        -0x6e5c3749 -> :sswitch_3
        -0x453fb703 -> :sswitch_2
        -0x3ad17acb -> :sswitch_1
        -0x2f244ae8 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7ab5a7ed -> :sswitch_d
        -0x755d1a4a -> :sswitch_c
        -0x4b527788 -> :sswitch_b
        -0x38e1da9b -> :sswitch_a
        -0x36c1e70c -> :sswitch_9
        0x19984e10 -> :sswitch_8
        0x1be36b13 -> :sswitch_7
        0x66d8a81d -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
