.class public final Lh2/b$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll6/e<",
        "Lh2/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lh2/b$b;

.field public static final b:Ll6/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh2/b$b;

    invoke-direct {v0}, Lh2/b$b;-><init>()V

    sput-object v0, Lh2/b$b;->a:Lh2/b$b;

    const-string v0, "logRequest"

    invoke-static {v0}, Ll6/d;->b(Ljava/lang/String;)Ll6/d;

    move-result-object v0

    sput-object v0, Lh2/b$b;->b:Ll6/d;

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

    check-cast p1, Lh2/j;

    check-cast p2, Ll6/f;

    invoke-virtual {p0, p1, p2}, Lh2/b$b;->b(Lh2/j;Ll6/f;)V

    return-void
.end method

.method public b(Lh2/j;Ll6/f;)V
    .locals 1

    sget-object v0, Lh2/b$b;->b:Ll6/d;

    invoke-virtual {p1}, Lh2/j;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ll6/f;->f(Ll6/d;Ljava/lang/Object;)Ll6/f;

    return-void
.end method
