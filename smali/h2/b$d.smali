.class public final Lh2/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll6/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll6/e<",
        "Lh2/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lh2/b$d;

.field public static final b:Ll6/d;

.field public static final c:Ll6/d;

.field public static final d:Ll6/d;

.field public static final e:Ll6/d;

.field public static final f:Ll6/d;

.field public static final g:Ll6/d;

.field public static final h:Ll6/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh2/b$d;

    invoke-direct {v0}, Lh2/b$d;-><init>()V

    sput-object v0, Lh2/b$d;->a:Lh2/b$d;

    const-string v0, "eventTimeMs"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$d;->b:Ll6/d;

    const-string v0, "eventCode"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$d;->c:Ll6/d;

    const-string v0, "eventUptimeMs"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$d;->d:Ll6/d;

    const-string v0, "sourceExtension"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$d;->e:Ll6/d;

    const-string v0, "sourceExtensionJsonProto3"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$d;->f:Ll6/d;

    const-string v0, "timezoneOffsetSeconds"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$d;->g:Ll6/d;

    const-string v0, "networkConnectionInfo"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$d;->h:Ll6/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lh2/l;

    check-cast p2, Ll6/f;

    invoke-virtual {p0, p1, p2}, Lh2/b$d;->b(Lh2/l;Ll6/f;)V

    return-void
.end method

.method public b(Lh2/l;Ll6/f;)V
    .locals 3

    sget-object v0, Lh2/b$d;->b:Ll6/d;

    invoke-virtual {p1}, Lh2/l;->c()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ll6/f;->b(Ll6/d;J)Ll6/f;

    sget-object v0, Lh2/b$d;->c:Ll6/d;

    invoke-virtual {p1}, Lh2/l;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lh2/b$d;->d:Ll6/d;

    invoke-virtual {p1}, Lh2/l;->d()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ll6/f;->b(Ll6/d;J)Ll6/f;

    sget-object v0, Lh2/b$d;->e:Ll6/d;

    invoke-virtual {p1}, Lh2/l;->f()[B

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lh2/b$d;->f:Ll6/d;

    invoke-virtual {p1}, Lh2/l;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lh2/b$d;->g:Ll6/d;

    invoke-virtual {p1}, Lh2/l;->h()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ll6/f;->b(Ll6/d;J)Ll6/f;

    sget-object v0, Lh2/b$d;->h:Ll6/d;

    invoke-virtual {p1}, Lh2/l;->e()Lh2/o;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    return-void
.end method
