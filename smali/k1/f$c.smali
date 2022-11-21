.class public final Lk1/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lk1/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lk1/f$g;

.field public b:I

.field public final synthetic d:Lk1/f;


# direct methods
.method public constructor <init>(Lk1/f;)V
    .locals 1

    iput-object p1, p0, Lk1/f$c;->d:Lk1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lk1/f;->a(Lk1/f;)Lk1/s;

    move-result-object v0

    iget-object v0, v0, Lk1/s;->g:Lk1/s$a;

    iget v0, v0, Lk1/s$a;->d:I

    invoke-virtual {p1, v0}, Lk1/f;->q(I)Lk1/f$g;

    move-result-object p1

    iput-object p1, p0, Lk1/f$c;->a:Lk1/f$g;

    const/4 p1, 0x0

    iput p1, p0, Lk1/f$c;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lk1/f;Lk1/f$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lk1/f$c;-><init>(Lk1/f;)V

    return-void
.end method


# virtual methods
.method public a()Lk1/d;
    .locals 1

    invoke-virtual {p0}, Lk1/f$c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lk1/f$c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk1/f$c;->b:I

    iget-object v0, p0, Lk1/f$c;->a:Lk1/f$g;

    invoke-virtual {v0}, Lk1/f$g;->A()Lk1/d;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lk1/f$c;->b:I

    iget-object v1, p0, Lk1/f$c;->d:Lk1/f;

    invoke-static {v1}, Lk1/f;->a(Lk1/f;)Lk1/s;

    move-result-object v1

    iget-object v1, v1, Lk1/s;->g:Lk1/s$a;

    iget v1, v1, Lk1/s$a;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lk1/f$c;->a()Lk1/d;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
