.class public final Lz5/a$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll6/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll6/e<",
        "Lz5/a0$e$d$a$b$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lz5/a$m;

.field public static final b:Ll6/d;

.field public static final c:Ll6/d;

.field public static final d:Ll6/d;

.field public static final e:Ll6/d;

.field public static final f:Ll6/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz5/a$m;

    invoke-direct {v0}, Lz5/a$m;-><init>()V

    sput-object v0, Lz5/a$m;->a:Lz5/a$m;

    const-string v0, "type"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$m;->b:Ll6/d;

    const-string v0, "reason"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$m;->c:Ll6/d;

    const-string v0, "frames"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$m;->d:Ll6/d;

    const-string v0, "causedBy"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$m;->e:Ll6/d;

    const-string v0, "overflowCount"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$m;->f:Ll6/d;

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

    check-cast p1, Lz5/a0$e$d$a$b$c;

    check-cast p2, Ll6/f;

    invoke-virtual {p0, p1, p2}, Lz5/a$m;->b(Lz5/a0$e$d$a$b$c;Ll6/f;)V

    return-void
.end method

.method public b(Lz5/a0$e$d$a$b$c;Ll6/f;)V
    .locals 2

    sget-object v0, Lz5/a$m;->b:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e$d$a$b$c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$m;->c:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e$d$a$b$c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$m;->d:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e$d$a$b$c;->c()Lz5/b0;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$m;->e:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e$d$a$b$c;->b()Lz5/a0$e$d$a$b$c;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$m;->f:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$e$d$a$b$c;->d()I

    move-result p1

    invoke-interface {p2, v0, p1}, Ll6/f;->a(Ll6/d;I)Ll6/f;

    return-void
.end method
