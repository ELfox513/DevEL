.class public Lz1/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/s$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz1/w;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz1/w;


# direct methods
.method public constructor <init>(Lz1/w;)V
    .locals 0

    iput-object p1, p0, Lz1/w$a;->a:Lz1/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lz1/s;Lz1/s;)V
    .locals 1

    new-instance p2, Lz1/w$b;

    iget-object v0, p0, Lz1/w$a;->a:Lz1/w;

    invoke-direct {p2, v0, p1}, Lz1/w$b;-><init>(Lz1/w;Lz1/s;)V

    invoke-virtual {p2}, Lz1/w$b;->g()V

    return-void
.end method
