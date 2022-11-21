.class public final Lk4/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lx3/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx3/i;

    const-string v1, "Games"

    invoke-direct {v0, v1}, Lx3/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lk4/q;->a:Lx3/i;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lk4/q;->a:Lx3/i;

    invoke-static {p0}, Lk4/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lx3/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lk4/q;->a:Lx3/i;

    invoke-static {p0}, Lk4/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lx3/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lk4/q;->a:Lx3/i;

    invoke-static {p0}, Lk4/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lx3/i;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "PlayGamesServices"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%s[%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
