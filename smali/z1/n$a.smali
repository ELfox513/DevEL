.class public Lz1/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lw1/q;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lw1/q;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/n$a;->a:Lw1/q;

    iput p2, p0, Lz1/n$a;->b:I

    iput p3, p0, Lz1/n$a;->c:I

    return-void
.end method
