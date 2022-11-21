.class public Lj7/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:[Ljava/lang/String;


# direct methods
.method public static a(Ljava/net/URI;Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "firebase_performance_whitelisted_domains"

    const-string v2, "array"

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lc7/a;->e()Lc7/a;

    move-result-object v2

    const-string v3, "Detected domain allowlist, only allowlisted domains will be measured."

    invoke-virtual {v2, v3}, Lc7/a;->a(Ljava/lang/String;)V

    sget-object v2, Lj7/i;->a:[Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lj7/i;->a:[Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    sget-object p1, Lj7/i;->a:[Ljava/lang/String;

    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, p1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method
