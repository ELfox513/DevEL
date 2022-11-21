.class public Lb2/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb2/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb2/n;->iterator()Lb2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lb2/n;


# direct methods
.method public constructor <init>(Lb2/n;)V
    .locals 0

    iput-object p1, p0, Lb2/n$a;->b:Lb2/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lb2/n$a;->a:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lb2/n$a;->a:I

    iget-object v1, p0, Lb2/n$a;->b:Lb2/n;

    iget-object v1, v1, Lb2/n;->a:Lb2/j;

    invoke-virtual {v1}, Lb2/j;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()I
    .locals 3

    invoke-virtual {p0}, Lb2/n$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb2/n$a;->b:Lb2/n;

    iget-object v0, v0, Lb2/n;->a:Lb2/j;

    iget v1, p0, Lb2/n$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb2/n$a;->a:I

    invoke-virtual {v0, v1}, Lb2/j;->B(I)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
