.class public Lz1/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/s$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz1/f;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz1/f;


# direct methods
.method public constructor <init>(Lz1/f;)V
    .locals 0

    iput-object p1, p0, Lz1/f$b;->a:Lz1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lz1/s;Lz1/s;)V
    .locals 0

    new-instance p2, Lz1/f$b$a;

    invoke-direct {p2, p0}, Lz1/f$b$a;-><init>(Lz1/f$b;)V

    invoke-virtual {p1, p2}, Lz1/s;->l(Lz1/u$a;)V

    return-void
.end method
