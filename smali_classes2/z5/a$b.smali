.class public final Lz5/a$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll6/e<",
        "Lz5/a0$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lz5/a$b;

.field public static final b:Ll6/d;

.field public static final c:Ll6/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz5/a$b;

    invoke-direct {v0}, Lz5/a$b;-><init>()V

    sput-object v0, Lz5/a$b;->a:Lz5/a$b;

    const-string v0, "key"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$b;->b:Ll6/d;

    const-string v0, "value"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lz5/a$b;->c:Ll6/d;

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

    check-cast p1, Lz5/a0$c;

    check-cast p2, Ll6/f;

    invoke-virtual {p0, p1, p2}, Lz5/a$b;->b(Lz5/a0$c;Ll6/f;)V

    return-void
.end method

.method public b(Lz5/a0$c;Ll6/f;)V
    .locals 2

    sget-object v0, Lz5/a$b;->b:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    sget-object v0, Lz5/a$b;->c:Ll6/d;

    invoke-virtual {p1}, Lz5/a0$c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    return-void
.end method
