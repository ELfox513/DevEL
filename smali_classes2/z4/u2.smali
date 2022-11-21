.class public final Lz4/u2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz4/v2;


# instance fields
.field public final synthetic a:Lz4/i;


# direct methods
.method public constructor <init>(Lz4/i;)V
    .locals 0

    iput-object p1, p0, Lz4/u2;->a:Lz4/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d0(I)B
    .locals 1

    iget-object v0, p0, Lz4/u2;->a:Lz4/i;

    invoke-virtual {v0, p1}, Lz4/i;->t(I)B

    move-result p1

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lz4/u2;->a:Lz4/i;

    invoke-virtual {v0}, Lz4/i;->size()I

    move-result v0

    return v0
.end method
