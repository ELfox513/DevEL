.class public final Lr4/vc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/tc2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lr4/i83;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lr4/i83;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/vc2;->a:Landroid/content/Context;

    iput-object p2, p0, Lr4/vc2;->b:Lr4/i83;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lr4/tc2;
    .locals 11

    new-instance v0, Lr4/tc2;

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v1, p0, Lr4/vc2;->a:Landroid/content/Context;

    sget-object v2, Lr4/rz;->q4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "mobileads_consent"

    const-string v4, ""

    const/4 v5, 0x0

    if-nez v2, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "consent_string"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    sget-object v2, Lr4/rz;->s4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v6

    invoke-virtual {v6, v2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lr4/vc2;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "fc_consent"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {}, Lz2/t;->d()Lb3/k2;

    iget-object v2, p0, Lr4/vc2;->a:Landroid/content/Context;

    sget-object v3, Lr4/rz;->r4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v6

    invoke-virtual {v6, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_2

    move-object v3, v6

    goto :goto_3

    :cond_2
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v7, "IABConsent_CMPPresent"

    invoke-interface {v2, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/String;

    const-string v9, "IABConsent_SubjectToGDPR"

    aput-object v9, v8, v5

    const-string v9, "IABConsent_ConsentString"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    const-string v10, "IABConsent_ParsedPurposeConsents"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-string v10, "IABConsent_ParsedVendorConsents"

    aput-object v10, v8, v9

    :goto_2
    if-ge v5, v7, :cond_5

    aget-object v9, v8, v5

    invoke-interface {v2, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2, v9, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-direct {v0, v1, v4, v3, v6}, Lr4/tc2;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lr4/uc2;)V

    return-object v0
.end method

.method public final zza()Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/tc2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/vc2;->b:Lr4/i83;

    new-instance v1, Lr4/sc2;

    invoke-direct {v1, p0}, Lr4/sc2;-><init>(Lr4/vc2;)V

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
