.class public final Lk1/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lk1/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lk1/f;


# direct methods
.method public constructor <init>(Lk1/f;)V
    .locals 0

    iput-object p1, p0, Lk1/f$b;->a:Lk1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk1/f;Lk1/f$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lk1/f$b;-><init>(Lk1/f;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lk1/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lk1/f$b;->a:Lk1/f;

    invoke-static {v0}, Lk1/f;->a(Lk1/f;)Lk1/s;

    move-result-object v0

    iget-object v0, v0, Lk1/s;->g:Lk1/s$a;

    invoke-virtual {v0}, Lk1/s$a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lk1/f$c;

    iget-object v1, p0, Lk1/f$b;->a:Lk1/f;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk1/f$c;-><init>(Lk1/f;Lk1/f$a;)V

    :goto_0
    return-object v0
.end method
