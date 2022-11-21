.class public Lz1/f$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz1/f$b;->a(Lz1/s;Lz1/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz1/f$b;


# direct methods
.method public constructor <init>(Lz1/f$b;)V
    .locals 0

    iput-object p1, p0, Lz1/f$b$a;->a:Lz1/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lz1/n;)V
    .locals 0

    return-void
.end method

.method public b(Lz1/l;)V
    .locals 1

    iget-object v0, p0, Lz1/f$b$a;->a:Lz1/f$b;

    iget-object v0, v0, Lz1/f$b;->a:Lz1/f;

    invoke-static {v0, p1}, Lz1/f;->b(Lz1/f;Lz1/u;)V

    return-void
.end method

.method public c(Lz1/l;)V
    .locals 0

    return-void
.end method
