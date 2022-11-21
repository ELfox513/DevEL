.class public Le7/a;
.super Le7/e;
.source "SourceFile"


# static fields
.field public static final b:Lc7/a;


# instance fields
.field public final a:Lk7/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lc7/a;->e()Lc7/a;

    move-result-object v0

    sput-object v0, Le7/a;->b:Lc7/a;

    return-void
.end method

.method public constructor <init>(Lk7/c;)V
    .locals 0

    invoke-direct {p0}, Le7/e;-><init>()V

    iput-object p1, p0, Le7/a;->a:Lk7/c;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    invoke-virtual {p0}, Le7/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Le7/a;->b:Lc7/a;

    const-string v1, "ApplicationInfo is invalid"

    invoke-virtual {v0, v1}, Lc7/a;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final g()Z
    .locals 3

    iget-object v0, p0, Le7/a;->a:Lk7/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Le7/a;->b:Lc7/a;

    const-string v2, "ApplicationInfo is null"

    invoke-virtual {v0, v2}, Lc7/a;->i(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Lk7/c;->c0()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Le7/a;->b:Lc7/a;

    const-string v2, "GoogleAppId is null"

    invoke-virtual {v0, v2}, Lc7/a;->i(Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v0, p0, Le7/a;->a:Lk7/c;

    invoke-virtual {v0}, Lk7/c;->a0()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Le7/a;->b:Lc7/a;

    const-string v2, "AppInstanceId is null"

    invoke-virtual {v0, v2}, Lc7/a;->i(Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object v0, p0, Le7/a;->a:Lk7/c;

    invoke-virtual {v0}, Lk7/c;->b0()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Le7/a;->b:Lc7/a;

    const-string v2, "ApplicationProcessState is null"

    invoke-virtual {v0, v2}, Lc7/a;->i(Ljava/lang/String;)V

    return v1

    :cond_3
    iget-object v0, p0, Le7/a;->a:Lk7/c;

    invoke-virtual {v0}, Lk7/c;->Z()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Le7/a;->a:Lk7/c;

    invoke-virtual {v0}, Lk7/c;->W()Lk7/a;

    move-result-object v0

    invoke-virtual {v0}, Lk7/a;->V()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Le7/a;->b:Lc7/a;

    const-string v2, "AndroidAppInfo.packageName is null"

    invoke-virtual {v0, v2}, Lc7/a;->i(Ljava/lang/String;)V

    return v1

    :cond_4
    iget-object v0, p0, Le7/a;->a:Lk7/c;

    invoke-virtual {v0}, Lk7/c;->W()Lk7/a;

    move-result-object v0

    invoke-virtual {v0}, Lk7/a;->W()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Le7/a;->b:Lc7/a;

    const-string v2, "AndroidAppInfo.sdkVersion is null"

    invoke-virtual {v0, v2}, Lc7/a;->i(Ljava/lang/String;)V

    return v1

    :cond_5
    const/4 v0, 0x1

    return v0
.end method
