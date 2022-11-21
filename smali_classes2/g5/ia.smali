.class public final Lg5/ia;
.super Lg5/w5;
.source "SourceFile"


# static fields
.field public static final g:[Ljava/lang/String;

.field public static final h:[Ljava/lang/String;

.field public static final i:Ljava/util/regex/Pattern;

.field public static final j:Ljava/util/regex/Pattern;

.field public static final k:Ljava/util/regex/Pattern;

.field public static final l:Ljava/util/regex/Pattern;

.field public static final m:Ljava/util/regex/Pattern;

.field public static final n:Ljava/util/regex/Pattern;


# instance fields
.field public c:Ljava/security/SecureRandom;

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public e:I

.field public f:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "firebase_"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "google_"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "ga_"

    aput-object v4, v0, v1

    sput-object v0, Lg5/ia;->g:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_err"

    aput-object v1, v0, v2

    sput-object v0, Lg5/ia;->h:[Ljava/lang/String;

    const-string v0, "^([^\\s@]+)@([^\\s@]+\\.[^\\s@]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lg5/ia;->i:Ljava/util/regex/Pattern;

    const-string v0, "^(gmail|googlemail)\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lg5/ia;->j:Ljava/util/regex/Pattern;

    const-string v0, "[\\s-()/.]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lg5/ia;->k:Ljava/util/regex/Pattern;

    const-string v0, "^\\+\\d{11,15}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lg5/ia;->l:Ljava/util/regex/Pattern;

    const-string v0, "[0-9`~!@#$%^&*()_\\-+=:;<>,.?|/\\\\\\[\\]]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lg5/ia;->m:Ljava/util/regex/Pattern;

    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lg5/ia;->n:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lg5/b5;)V
    .locals 2

    invoke-direct {p0, p1}, Lg5/w5;-><init>(Lg5/b5;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lg5/ia;->f:Ljava/lang/Integer;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lg5/ia;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static V(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static W(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_1

    const-string v1, "_ep"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static X(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Landroid/content/pm/ActivityInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method public static Y(Landroid/content/Context;Z)Z
    .locals 1

    invoke-static {p0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    const-string p1, "com.google.android.gms.measurement.AppMeasurementJobService"

    invoke-static {p0, p1}, Lg5/ia;->i0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string p1, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-static {p0, p1}, Lg5/ia;->i0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static Z(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static a0(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lg5/ia;->h:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final d0(Landroid/os/Bundle;I)Z
    .locals 6

    const-string v0, "_err"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final e0(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static h0(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-static {p0, v3}, Lg5/ia;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static i0(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method public static n(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2

    const-string p0, "MD5"

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    return-object v1

    :catch_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static p(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg5/c;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/c;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v1, Lg5/c;->a:Ljava/lang/String;

    const-string v4, "app_id"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lg5/c;->b:Ljava/lang/String;

    const-string v4, "origin"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, v1, Lg5/c;->k:J

    const-string v5, "creation_timestamp"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, v1, Lg5/c;->d:Lg5/ea;

    iget-object v3, v3, Lg5/ea;->b:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lg5/c;->d:Lg5/ea;

    invoke-virtual {v3}, Lg5/ea;->X0()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lg5/y5;->b(Landroid/os/Bundle;Ljava/lang/Object;)V

    iget-boolean v3, v1, Lg5/c;->p:Z

    const-string v4, "active"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, v1, Lg5/c;->q:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, "trigger_event_name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v3, v1, Lg5/c;->r:Lg5/u;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lg5/u;->a:Ljava/lang/String;

    const-string v4, "timed_out_event_name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lg5/c;->r:Lg5/u;

    iget-object v3, v3, Lg5/u;->b:Lg5/s;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lg5/s;->Z0()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "timed_out_event_params"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    iget-wide v3, v1, Lg5/c;->s:J

    const-string v5, "trigger_timeout"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, v1, Lg5/c;->t:Lg5/u;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lg5/u;->a:Ljava/lang/String;

    const-string v4, "triggered_event_name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lg5/c;->t:Lg5/u;

    iget-object v3, v3, Lg5/u;->b:Lg5/s;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lg5/s;->Z0()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "triggered_event_params"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    iget-object v3, v1, Lg5/c;->d:Lg5/ea;

    iget-wide v3, v3, Lg5/ea;->d:J

    const-string v5, "triggered_timestamp"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v3, v1, Lg5/c;->u:J

    const-string v5, "time_to_live"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, v1, Lg5/c;->v:Lg5/u;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lg5/u;->a:Ljava/lang/String;

    const-string v4, "expired_event_name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lg5/c;->v:Lg5/u;

    iget-object v1, v1, Lg5/u;->b:Lg5/s;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lg5/s;->Z0()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "expired_event_params"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method public static q0([B)J
    .locals 8

    invoke-static {p0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lx3/q;->m(Z)V

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v2, 0x0

    :goto_1
    if-ltz v0, :cond_1

    array-length v4, p0

    add-int/lit8 v4, v4, -0x8

    if-lt v0, v4, :cond_1

    aget-byte v4, p0, v0

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-wide v2
.end method

.method public static s(Lg5/p7;Landroid/os/Bundle;Z)V
    .locals 4

    const-string v0, "_si"

    const-string v1, "_sn"

    const-string v2, "_sc"

    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_3

    :cond_1
    :goto_0
    iget-object p2, p0, Lg5/p7;->a:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_1
    iget-object p2, p0, Lg5/p7;->b:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_2
    iget-wide v1, p0, Lg5/p7;->c:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_4
    :goto_3
    if-eqz p1, :cond_5

    if-nez p0, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final A(Lb5/i1;[B)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :try_start_0
    invoke-interface {p1, v0}, Lb5/i1;->C0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->r()Lg5/o3;

    move-result-object p2

    const-string v0, "Error returning byte array to wrapper"

    invoke-virtual {p2, v0, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final B(Lb5/i1;I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    invoke-interface {p1, v0}, Lb5/i1;->C0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->r()Lg5/o3;

    move-result-object p2

    const-string v0, "Error returning int value to wrapper"

    invoke-virtual {p2, v0, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final C(Lb5/i1;J)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :try_start_0
    invoke-interface {p1, v0}, Lb5/i1;->C0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->r()Lg5/o3;

    move-result-object p2

    const-string p3, "Error returning long value to wrapper"

    invoke-virtual {p2, p3, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final D(Lb5/i1;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1, v0}, Lb5/i1;->C0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->r()Lg5/o3;

    move-result-object p2

    const-string v0, "Error returning string value to wrapper"

    invoke-virtual {p2, v0, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    if-nez v11, :cond_0

    return-void

    :cond_0
    iget-object v0, v9, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v15, 0x0

    :cond_1
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    if-eqz v12, :cond_3

    invoke-interface {v12, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_1
    if-nez p6, :cond_4

    invoke-virtual {v9, v8}, Lg5/ia;->m0(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_5

    invoke-virtual {v9, v8}, Lg5/ia;->l0(Ljava/lang/String;)I

    move-result v0

    :cond_5
    move v2, v0

    :goto_3
    if-eqz v2, :cond_7

    const/4 v0, 0x3

    if-ne v2, v0, :cond_6

    move-object v5, v8

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    move-object v5, v0

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v3, v8

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lg5/ia;->r(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v11, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v11, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Lg5/ia;->T(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v9, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->s()Lg5/o3;

    move-result-object v0

    const-string v1, "Nested Bundle parameters are not allowed; discarded. event name, param name, child param name"

    move-object/from16 v7, p3

    invoke-virtual {v0, v1, v10, v7, v8}, Lg5/o3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x16

    move-object v14, v8

    const/16 v2, 0x16

    goto :goto_5

    :cond_8
    move-object/from16 v7, p3

    invoke-virtual {v11, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v8

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object v14, v8

    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lg5/ia;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I

    move-result v0

    move v2, v0

    :goto_5
    if-eqz v2, :cond_9

    const-string v0, "_ev"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v11, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v3, v14

    move-object v4, v14

    invoke-virtual/range {v0 .. v5}, Lg5/ia;->r(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v11, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {v14}, Lg5/ia;->W(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lg5/a6;->d:[Ljava/lang/String;

    invoke-static {v14, v0}, Lg5/ia;->h0(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 v15, v15, 0x1

    if-lez v15, :cond_1

    iget-object v0, v9, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->n()Lg5/o3;

    move-result-object v0

    iget-object v1, v9, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->y()Lg5/l3;

    move-result-object v1

    invoke-virtual {v1, v10}, Lg5/l3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->y()Lg5/l3;

    move-result-object v2

    invoke-virtual {v2, v11}, Lg5/l3;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Item cannot contain custom parameters"

    invoke-virtual {v0, v3, v1, v2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x17

    invoke-static {v11, v0}, Lg5/ia;->d0(Landroid/os/Bundle;I)Z

    invoke-virtual {v11, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Lg5/ia;->e0(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->l()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->n()Lg5/o3;

    move-result-object p2

    invoke-static {p1}, Lg5/q3;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id"

    invoke-virtual {p2, p3, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Lb5/ud;->b()Z

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->u()Lg5/g;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v2, Lg5/c3;->f0:Lg5/b3;

    invoke-virtual {p1, v0, v2}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {p2}, Lg5/ia;->e0(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->n()Lg5/o3;

    move-result-object p1

    invoke-static {p2}, Lg5/q3;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Invalid admob_app_id. Analytics disabled."

    invoke-virtual {p1, p3, p2}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->l()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->n()Lg5/o3;

    move-result-object p1

    const-string p2, "Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI"

    invoke-virtual {p1, p2}, Lg5/o3;->a(Ljava/lang/String;)V

    :cond_5
    return v1
.end method

.method public final I(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->n()Lg5/o3;

    move-result-object p2

    const-string p3, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, p3, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p2, :cond_1

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->n()Lg5/o3;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "Name is too long. Type, maximum supported length, name"

    invoke-virtual {v1, v2, p1, p2, p3}, Lg5/o3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final J(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->n()Lg5/o3;

    move-result-object p2

    const-string p3, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, p3, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_0
    invoke-static {p4}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg5/ia;->g:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    aget-object v3, v1, v2

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->n()Lg5/o3;

    move-result-object p2

    const-string p3, "Name starts with reserved prefix. Type, name"

    invoke-virtual {p2, p3, p1, p4}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    invoke-static {p4, p2}, Lg5/ia;->h0(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    invoke-static {p4, p3}, Lg5/ia;->h0(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->n()Lg5/o3;

    move-result-object p2

    const-string p3, "Name is reserved. Type, name"

    invoke-virtual {p2, p3, p1, p4}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public final K(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p4, :cond_0

    return v0

    :cond_0
    instance-of v1, p4, Ljava/lang/Long;

    if-nez v1, :cond_4

    instance-of v1, p4, Ljava/lang/Float;

    if-nez v1, :cond_4

    instance-of v1, p4, Ljava/lang/Integer;

    if-nez v1, :cond_4

    instance-of v1, p4, Ljava/lang/Byte;

    if-nez v1, :cond_4

    instance-of v1, p4, Ljava/lang/Short;

    if-nez v1, :cond_4

    instance-of v1, p4, Ljava/lang/Boolean;

    if-nez v1, :cond_4

    instance-of v1, p4, Ljava/lang/Double;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    instance-of v1, p4, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    instance-of v1, p4, Ljava/lang/Character;

    if-nez v1, :cond_3

    instance-of v1, p4, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p4, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p3, :cond_4

    iget-object p3, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p3}, Lg5/b5;->F()Lg5/q3;

    move-result-object p3

    invoke-virtual {p3}, Lg5/q3;->s()Lg5/o3;

    move-result-object p3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "Value is too long; discarded. Value kind, name, value length"

    invoke-virtual {p3, v0, p1, p2, p4}, Lg5/o3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_4
    :goto_1
    return v0
.end method

.method public final L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)I"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p3

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0, v0}, Lg5/ia;->T(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "param"

    const/16 v4, 0x11

    const/4 v5, 0x0

    if-eqz v2, :cond_7

    if-eqz p8, :cond_6

    sget-object v2, Lg5/a6;->c:[Ljava/lang/String;

    invoke-static {v8, v2}, Lg5/ia;->h0(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v0, 0x14

    return v0

    :cond_0
    iget-object v2, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->I()Lg5/w8;

    move-result-object v2

    invoke-virtual {v2}, Lg5/v5;->c()V

    invoke-virtual {v2}, Lg5/f4;->d()V

    invoke-virtual {v2}, Lg5/w8;->w()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->K()Lg5/ia;

    move-result-object v2

    invoke-virtual {v2}, Lg5/ia;->o0()I

    move-result v2

    const v6, 0x310c4

    if-ge v2, v6, :cond_2

    const/16 v0, 0x19

    return v0

    :cond_2
    :goto_0
    iget-object v2, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->u()Lg5/g;

    instance-of v2, v0, [Landroid/os/Parcelable;

    if-eqz v2, :cond_3

    move-object v6, v0

    check-cast v6, [Landroid/os/Parcelable;

    array-length v6, v6

    goto :goto_1

    :cond_3
    instance-of v6, v0, Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    move-object v6, v0

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_1
    const/16 v9, 0xc8

    if-le v6, v9, :cond_7

    iget-object v10, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v10}, Lg5/b5;->F()Lg5/q3;

    move-result-object v10

    invoke-virtual {v10}, Lg5/q3;->s()Lg5/o3;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v11, "Parameter array is too long; discarded. Value kind, name, array length"

    invoke-virtual {v10, v11, v3, v8, v6}, Lg5/o3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v6}, Lg5/b5;->u()Lg5/g;

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, [Landroid/os/Parcelable;

    array-length v6, v2

    if-le v6, v9, :cond_5

    invoke-static {v2, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    invoke-virtual {v1, v8, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_2

    :cond_4
    instance-of v2, v0, Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v9, :cond_5

    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v8, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_5
    :goto_2
    const/16 v9, 0x11

    goto :goto_3

    :cond_6
    const/16 v0, 0x15

    return v0

    :cond_7
    const/4 v9, 0x0

    :goto_3
    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->u()Lg5/g;

    move-result-object v1

    sget-object v2, Lg5/c3;->T:Lg5/b3;

    move-object v10, p1

    invoke-virtual {v1, p1, v2}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static/range {p2 .. p2}, Lg5/ia;->V(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    invoke-static/range {p3 .. p3}, Lg5/ia;->V(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->u()Lg5/g;

    const/16 v1, 0x100

    goto :goto_4

    :cond_a
    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->u()Lg5/g;

    const/16 v1, 0x64

    :goto_4
    invoke-virtual {p0, v3, v8, v1, v0}, Lg5/ia;->K(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return v9

    :cond_b
    if-eqz p8, :cond_12

    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_c

    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lg5/ia;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    goto/16 :goto_8

    :cond_c
    instance-of v1, v0, [Landroid/os/Parcelable;

    if-eqz v1, :cond_e

    move-object v11, v0

    check-cast v11, [Landroid/os/Parcelable;

    array-length v12, v11

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v12, :cond_11

    aget-object v0, v11, v13

    instance-of v1, v0, Landroid/os/Bundle;

    if-nez v1, :cond_d

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->s()Lg5/o3;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "All Parcelable[] elements must be of type Bundle. Value type, name"

    invoke-virtual {v1, v2, v0, v8}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    :cond_d
    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lg5/ia;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_e
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_12

    move-object v11, v0

    check-cast v11, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v12, :cond_11

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/os/Bundle;

    if-nez v1, :cond_10

    iget-object v1, v7, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->s()Lg5/o3;

    move-result-object v1

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_7

    :cond_f
    const-string v0, "null"

    :goto_7
    const-string v2, "All ArrayList elements must be of type Bundle. Value type, name"

    invoke-virtual {v1, v2, v0, v8}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    :cond_10
    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lg5/ia;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_11
    :goto_8
    return v9

    :cond_12
    :goto_9
    const/4 v0, 0x4

    return v0
.end method

.method public final M(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->n()Lg5/o3;

    move-result-object p2

    const-string v1, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, v1, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->n()Lg5/o3;

    move-result-object p2

    const-string v1, "Name is required and can\'t be empty. Type"

    invoke-virtual {p2, v1, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    const/16 v3, 0x5f

    if-nez v2, :cond_3

    if-ne v1, v3, :cond_2

    const/16 v1, 0x5f

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->n()Lg5/o3;

    move-result-object v1

    const-string v2, "Name must start with a letter or _ (underscore). Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_3
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_1
    if-ge v1, v2, :cond_6

    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    if-eq v4, v3, :cond_5

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->n()Lg5/o3;

    move-result-object v1

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_5
    :goto_2
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public final N(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->n()Lg5/o3;

    move-result-object p2

    const-string v1, "Name is required and can\'t be null. Type"

    invoke-virtual {p2, v1, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->n()Lg5/o3;

    move-result-object p2

    const-string v1, "Name is required and can\'t be empty. Type"

    invoke-virtual {p2, v1, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->n()Lg5/o3;

    move-result-object v1

    const-string v2, "Name must start with a letter. Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    :goto_0
    if-ge v1, v2, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_4

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->n()Lg5/o3;

    move-result-object v1

    const-string v2, "Name must consist of letters, digits or _ (underscores). Type, name"

    invoke-virtual {v1, v2, p1, p2}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0

    :cond_4
    :goto_1
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public final R(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lg5/v5;->c()V

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ld4/e;->a(Landroid/content/Context;)Ld4/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld4/d;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->l()Lg5/o3;

    move-result-object v0

    const-string v1, "Permission not granted"

    invoke-virtual {v0, v1, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final S(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    invoke-virtual {v0}, Lg5/g;->p()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->G()Lg5/b;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final T(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, [Landroid/os/Parcelable;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    instance-of p1, p1, Landroid/os/Bundle;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final U(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Ld4/e;->a(Landroid/content/Context;)Ld4/d;

    move-result-object p1

    const/16 v1, 0x40

    invoke-virtual {p1, p2, v1}, Ld4/d;->f(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_0

    array-length p2, p1

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget-object p1, p1, p2

    const-string p2, "X.509"

    invoke-static {p2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p2

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->m()Lg5/o3;

    move-result-object p2

    const-string v0, "Package name not found"

    invoke-virtual {p2, v0, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->m()Lg5/o3;

    move-result-object p2

    const-string v0, "Error obtaining certificate"

    invoke-virtual {p2, v0, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v3

    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v3

    :cond_5
    if-nez v0, :cond_9

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    return v3

    :cond_8
    :goto_0
    return v2

    :cond_9
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_1

    :cond_a
    return v3

    :cond_b
    :goto_1
    return v2
.end method

.method public final c0(Landroid/os/Parcelable;)[B
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public final d()V
    .locals 6

    invoke-virtual {p0}, Lg5/v5;->c()V

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->r()Lg5/o3;

    move-result-object v0

    const-string v3, "Utils falling back to Random for random id"

    invoke-virtual {v0, v3}, Lg5/o3;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lg5/ia;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f0(Ljava/lang/String;)I
    .locals 3

    const-string v0, "_ldl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->u()Lg5/g;

    const/16 p1, 0x800

    return p1

    :cond_0
    const-string v0, "_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lg5/c3;->d0:Lg5/b3;

    invoke-virtual {v0, v1, v2}, Lg5/g;->w(Ljava/lang/String;Lg5/b3;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_lgclid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->u()Lg5/g;

    const/16 p1, 0x64

    return p1

    :cond_1
    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->u()Lg5/g;

    const/16 p1, 0x24

    return p1

    :cond_2
    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->u()Lg5/g;

    const/16 p1, 0x100

    return p1
.end method

.method public final g0(ILjava/lang/Object;ZZ)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p2, Ljava/lang/Long;

    if-nez v1, :cond_e

    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v1, p2, Ljava/lang/Byte;

    if-eqz v1, :cond_3

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v1, p2, Ljava/lang/Short;

    if-eqz v1, :cond_4

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eq p2, p1, :cond_5

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_5
    const-wide/16 p1, 0x1

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_6
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_7

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_7
    instance-of v1, p2, Ljava/lang/String;

    if-nez v1, :cond_d

    instance-of v1, p2, Ljava/lang/Character;

    if-nez v1, :cond_d

    instance-of v1, p2, Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    if-eqz p4, :cond_c

    instance-of p1, p2, [Landroid/os/Bundle;

    if-nez p1, :cond_9

    instance-of p1, p2, [Landroid/os/Parcelable;

    if-eqz p1, :cond_c

    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, [Landroid/os/Parcelable;

    array-length p3, p2

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p3, :cond_b

    aget-object v0, p2, p4

    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_a

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lg5/ia;->u0(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Landroid/os/Bundle;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_c
    return-object v0

    :cond_d
    :goto_2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p3}, Lg5/ia;->l(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_e
    :goto_3
    return-object p2
.end method

.method public final j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "_ev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x100

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->u()Lg5/g;

    invoke-virtual {p0, v1, p2, v2, v2}, Lg5/ia;->g0(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lg5/ia;->V(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->u()Lg5/g;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->u()Lg5/g;

    const/16 v1, 0x64

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, v1, p2, p1, v2}, Lg5/ia;->g0(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j0(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 2

    const-string v0, "_ldl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lg5/ia;->f0(Ljava/lang/String;)I

    move-result v0

    const-string v1, "user property referrer"

    invoke-virtual {p0, v1, p1, v0, p2}, Lg5/ia;->K(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lg5/ia;->f0(Ljava/lang/String;)I

    move-result v0

    const-string v1, "user property"

    invoke-virtual {p0, v1, p1, v0, p2}, Lg5/ia;->K(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x7

    return p1
.end method

.method public final k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "_ldl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lg5/ia;->f0(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lg5/ia;->g0(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lg5/ia;->f0(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, v1, v1}, Lg5/ia;->g0(ILjava/lang/Object;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final k0(Ljava/lang/String;)I
    .locals 4

    const-string v0, "event"

    invoke-virtual {p0, v0, p1}, Lg5/ia;->M(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lg5/z5;->a:[Ljava/lang/String;

    sget-object v3, Lg5/z5;->b:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3, p1}, Lg5/ia;->J(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0xd

    return p1

    :cond_1
    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->u()Lg5/g;

    const/16 v1, 0x28

    invoke-virtual {p0, v0, v1, p1}, Lg5/ia;->I(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final l(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    if-le v1, p2, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "..."

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method public final l0(Ljava/lang/String;)I
    .locals 3

    const-string v0, "event param"

    invoke-virtual {p0, v0, p1}, Lg5/ia;->M(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Lg5/ia;->J(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0xe

    return p1

    :cond_1
    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->u()Lg5/g;

    const/16 v1, 0x28

    invoke-virtual {p0, v0, v1, p1}, Lg5/ia;->I(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final m(JLjava/lang/String;Ljava/lang/String;J)Ljava/net/URL;
    .locals 4

    :try_start_0
    invoke-static {p4}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x2

    new-array v0, p2, [Ljava/lang/Object;

    const-wide/32 v1, 0xa822

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lg5/ia;->o0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "v%s.%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    aput-object p4, p1, v3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p1, p2

    const-string p2, "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->u()Lg5/g;

    move-result-object p2

    invoke-virtual {p2}, Lg5/g;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "&ddl_test=1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->m()Lg5/o3;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Failed to create BOW URL for Deferred Deep Link. exception"

    invoke-virtual {p2, p3, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final m0(Ljava/lang/String;)I
    .locals 3

    const-string v0, "event param"

    invoke-virtual {p0, v0, p1}, Lg5/ia;->N(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Lg5/ia;->J(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0xe

    return p1

    :cond_1
    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->u()Lg5/g;

    const/16 v1, 0x28

    invoke-virtual {p0, v0, v1, p1}, Lg5/ia;->I(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final n0(Ljava/lang/String;)I
    .locals 4

    const-string v0, "user property"

    invoke-virtual {p0, v0, p1}, Lg5/ia;->M(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x6

    if-nez v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lg5/b6;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3, p1}, Lg5/ia;->J(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p1, 0xf

    return p1

    :cond_1
    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->u()Lg5/g;

    const/16 v1, 0x18

    invoke-virtual {p0, v0, v1, p1}, Lg5/ia;->I(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final o()Ljava/security/SecureRandom;
    .locals 1

    invoke-virtual {p0}, Lg5/v5;->c()V

    iget-object v0, p0, Lg5/ia;->c:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lg5/ia;->c:Ljava/security/SecureRandom;

    :cond_0
    iget-object v0, p0, Lg5/ia;->c:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public final o0()I
    .locals 2

    iget-object v0, p0, Lg5/ia;->f:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static {}, Lt3/h;->f()Lt3/h;

    move-result-object v0

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt3/h;->a(Landroid/content/Context;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lg5/ia;->f:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lg5/ia;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final p0(I)I
    .locals 2

    invoke-static {}, Lt3/h;->f()Lt3/h;

    move-result-object p1

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v0

    const v1, 0xbdfcb8

    invoke-virtual {p1, v0, v1}, Lt3/h;->h(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public final q(Landroid/os/Bundle;J)V
    .locals 6

    const-string v0, "_et"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v3, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->F()Lg5/q3;

    move-result-object v3

    invoke-virtual {v3}, Lg5/q3;->r()Lg5/o3;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Params already contained engagement"

    invoke-virtual {v3, v5, v4}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    add-long/2addr p2, v1

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final r(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Lg5/ia;->d0(Landroid/os/Bundle;I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->u()Lg5/g;

    const/16 p2, 0x28

    const/4 p4, 0x1

    invoke-virtual {p0, p3, p2, p4}, Lg5/ia;->l(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p2

    const-string p3, "_ev"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p2, p5, Ljava/lang/String;

    if-nez p2, :cond_0

    instance-of p2, p5, Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    :cond_0
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    int-to-long p2, p2

    const-string p4, "_el"

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public final r0()J
    .locals 6

    iget-object v0, p0, Lg5/ia;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lg5/ia;->d:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v4, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->Q()Lc4/f;

    move-result-object v4

    invoke-interface {v4}, Lc4/f;->a()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    iget v3, p0, Lg5/ia;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lg5/ia;->e:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    iget-object v0, p0, Lg5/ia;->d:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lg5/ia;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    iget-object v1, p0, Lg5/ia;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public final s0(JJ)J
    .locals 2

    const-wide/32 v0, 0xea60

    mul-long p3, p3, v0

    add-long/2addr p1, p3

    const-wide/32 p3, 0x5265c00

    div-long/2addr p1, p3

    return-wide p1
.end method

.method public final t(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->K()Lg5/ia;

    move-result-object v2

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v1, v3}, Lg5/ia;->w(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final t0(Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "gclid"

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "utm_campaign"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "utm_source"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "utm_medium"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "campaign"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "source"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "medium"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v1, "utm_term"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "term"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v1, "utm_content"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v1, "aclid"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v1, "cp1"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v1, "anid"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-object v0

    :catch_0
    move-exception p1

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->r()Lg5/o3;

    move-result-object v1

    const-string v2, "Install referrer url isn\'t a hierarchical URI"

    invoke-virtual {v1, v2, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    return-object v0
.end method

.method public final u(Lg5/r3;I)V
    .locals 8

    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p1, Lg5/r3;->d:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lg5/ia;->W(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    if-le v1, p2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x30

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Event can\'t contain more than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->F()Lg5/q3;

    move-result-object v4

    invoke-virtual {v4}, Lg5/q3;->n()Lg5/o3;

    move-result-object v4

    iget-object v5, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v5}, Lg5/b5;->y()Lg5/l3;

    move-result-object v5

    iget-object v6, p1, Lg5/r3;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lg5/l3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v6}, Lg5/b5;->y()Lg5/l3;

    move-result-object v6

    iget-object v7, p1, Lg5/r3;->d:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Lg5/l3;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, p1, Lg5/r3;->d:Landroid/os/Bundle;

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lg5/ia;->d0(Landroid/os/Bundle;I)Z

    iget-object v3, p1, Lg5/r3;->d:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final u0(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lg5/ia;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->F()Lg5/q3;

    move-result-object v3

    invoke-virtual {v3}, Lg5/q3;->s()Lg5/o3;

    move-result-object v3

    iget-object v4, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->y()Lg5/l3;

    move-result-object v4

    invoke-virtual {v4, v2}, Lg5/l3;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Param value can\'t be null"

    invoke-virtual {v3, v4, v2}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v2, v3}, Lg5/ia;->w(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final v(Lg5/ha;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, p3}, Lg5/ia;->d0(Landroid/os/Bundle;I)Z

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p4, 0x6

    if-eq p3, p4, :cond_1

    const/4 p4, 0x7

    if-eq p3, p4, :cond_1

    const/4 p4, 0x2

    if-ne p3, p4, :cond_2

    :cond_1
    int-to-long p3, p6

    const-string p5, "_el"

    invoke-virtual {v0, p5, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    const-string p3, "_err"

    invoke-interface {p1, p2, p3, v0}, Lg5/ha;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final v0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    sget-object v0, Lg5/z5;->d:[Ljava/lang/String;

    invoke-static {v10, v0}, Lg5/ia;->h0(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v13

    if-eqz v11, :cond_d

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v0, v9, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->u()Lg5/g;

    move-result-object v0

    invoke-virtual {v0}, Lg5/g;->h()I

    move-result v8

    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    if-eqz v12, :cond_1

    invoke-interface {v12, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_3

    :cond_1
    :goto_1
    if-nez p5, :cond_2

    invoke-virtual {v9, v7}, Lg5/ia;->m0(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_3

    invoke-virtual {v9, v7}, Lg5/ia;->l0(Ljava/lang/String;)I

    move-result v0

    :cond_3
    move v2, v0

    :goto_3
    if-eqz v2, :cond_5

    const/4 v0, 0x3

    if-ne v2, v0, :cond_4

    move-object v5, v7

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v3, v7

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lg5/ia;->r(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v15, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move v14, v8

    goto/16 :goto_7

    :cond_5
    invoke-virtual {v11, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v7

    move-object v5, v15

    move-object/from16 v6, p4

    move-object/from16 v19, v7

    move/from16 v7, p5

    move v14, v8

    move v8, v13

    invoke-virtual/range {v0 .. v8}, Lg5/ia;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;Ljava/util/List;ZZ)I

    move-result v2

    const/16 v0, 0x11

    if-ne v2, v0, :cond_6

    const/16 v2, 0x11

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v3, v19

    move-object/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lg5/ia;->r(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_6
    if-eqz v2, :cond_8

    const-string v0, "_ev"

    move-object/from16 v6, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0x15

    if-ne v2, v0, :cond_7

    move-object v3, v10

    goto :goto_5

    :cond_7
    move-object v3, v6

    :goto_5
    invoke-virtual {v11, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lg5/ia;->r(Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v15, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v6, v19

    :cond_9
    invoke-static {v6}, Lg5/ia;->W(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v0, v18, 0x1

    if-le v0, v14, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Event can\'t contain more than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " params"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->n()Lg5/o3;

    move-result-object v2

    iget-object v3, v9, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->y()Lg5/l3;

    move-result-object v3

    invoke-virtual {v3, v10}, Lg5/l3;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v9, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v4}, Lg5/b5;->y()Lg5/l3;

    move-result-object v4

    invoke-virtual {v4, v11}, Lg5/l3;->b(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x5

    invoke-static {v15, v1}, Lg5/ia;->d0(Landroid/os/Bundle;I)Z

    invoke-virtual {v15, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_a
    move/from16 v18, v0

    :cond_b
    :goto_7
    move v8, v14

    goto/16 :goto_0

    :cond_c
    move-object v14, v15

    goto :goto_8

    :cond_d
    const/4 v14, 0x0

    :goto_8
    return-object v14
.end method

.method public final w(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p3, Ljava/lang/Long;

    if-eqz v0, :cond_1

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_1
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    instance-of v0, p3, Ljava/lang/Double;

    if-eqz v0, :cond_3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-void

    :cond_3
    instance-of v0, p3, [Landroid/os/Bundle;

    if-eqz v0, :cond_4

    check-cast p3, [Landroid/os/Bundle;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-void

    :cond_4
    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p3}, Lg5/b5;->F()Lg5/q3;

    move-result-object p3

    invoke-virtual {p3}, Lg5/q3;->s()Lg5/o3;

    move-result-object p3

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->y()Lg5/l3;

    move-result-object v0

    invoke-virtual {v0, p2}, Lg5/l3;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Not putting event parameter. Invalid value type. name, type"

    invoke-virtual {p3, v0, p2, p1}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public final w0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lg5/u;
    .locals 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p8

    if-eqz p8, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p2}, Lg5/ia;->k0(Ljava/lang/String;)I

    move-result p8

    if-nez p8, :cond_3

    if-eqz p3, :cond_1

    new-instance p8, Landroid/os/Bundle;

    invoke-direct {p8, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    new-instance p8, Landroid/os/Bundle;

    invoke-direct {p8}, Landroid/os/Bundle;-><init>()V

    :goto_0
    move-object v3, p8

    const-string p3, "_o"

    invoke-virtual {v3, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lc4/g;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lg5/ia;->v0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p7, :cond_2

    invoke-virtual {p0, p1}, Lg5/ia;->u0(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    :cond_2
    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lg5/u;

    new-instance v2, Lg5/s;

    invoke-direct {v2, p1}, Lg5/s;-><init>(Landroid/os/Bundle;)V

    move-object v0, p3

    move-object v1, p2

    move-object v3, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lg5/u;-><init>(Ljava/lang/String;Lg5/s;Ljava/lang/String;J)V

    return-object p3

    :cond_3
    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->F()Lg5/q3;

    move-result-object p1

    invoke-virtual {p1}, Lg5/q3;->m()Lg5/o3;

    move-result-object p1

    iget-object p3, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p3}, Lg5/b5;->y()Lg5/l3;

    move-result-object p3

    invoke-virtual {p3, p2}, Lg5/l3;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Invalid conditional property event name"

    invoke-virtual {p1, p3, p2}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final x(Lb5/i1;Z)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_0
    invoke-interface {p1, v0}, Lb5/i1;->C0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->r()Lg5/o3;

    move-result-object p2

    const-string v0, "Error returning boolean value to wrapper"

    invoke-virtual {p2, v0, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final y(Lb5/i1;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/i1;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "r"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :try_start_0
    invoke-interface {p1, v0}, Lb5/i1;->C0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->r()Lg5/o3;

    move-result-object p2

    const-string v0, "Error returning bundle list to wrapper"

    invoke-virtual {p2, v0, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final z(Lb5/i1;Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    invoke-interface {p1, p2}, Lb5/i1;->C0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p2}, Lg5/b5;->F()Lg5/q3;

    move-result-object p2

    invoke-virtual {p2}, Lg5/q3;->r()Lg5/o3;

    move-result-object p2

    const-string v0, "Error returning bundle value to wrapper"

    invoke-virtual {p2, v0, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
