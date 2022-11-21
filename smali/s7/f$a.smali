.class public Ls7/f$a;
.super Ls7/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls7/f;->b(Ls7/d;[BII)Ls7/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[B

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Ls7/d;I[BI)V
    .locals 0

    iput p2, p0, Ls7/f$a;->a:I

    iput-object p3, p0, Ls7/f$a;->b:[B

    iput p4, p0, Ls7/f$a;->c:I

    invoke-direct {p0}, Ls7/f;-><init>()V

    return-void
.end method
