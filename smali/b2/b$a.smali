.class public Lb2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb2/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb2/b;->iterator()Lb2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lb2/b;


# direct methods
.method public constructor <init>(Lb2/b;)V
    .locals 1

    iput-object p1, p0, Lb2/b$a;->b:Lb2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lb2/b;->a:[I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lb2/c;->e([II)I

    move-result p1

    iput p1, p0, Lb2/b$a;->a:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lb2/b$a;->a:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()I
    .locals 3

    invoke-virtual {p0}, Lb2/b$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lb2/b$a;->a:I

    iget-object v1, p0, Lb2/b$a;->b:Lb2/b;

    iget-object v1, v1, Lb2/b;->a:[I

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lb2/c;->e([II)I

    move-result v1

    iput v1, p0, Lb2/b$a;->a:I

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
