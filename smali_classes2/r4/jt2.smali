.class public final synthetic Lr4/jt2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/xc1;


# instance fields
.field public final a:Lr4/rs2;

.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lr4/rs2;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/jt2;->a:Lr4/rs2;

    iput-object p2, p0, Lr4/jt2;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lr4/jt2;->a:Lr4/rs2;

    iget-object v1, p0, Lr4/jt2;->b:Ljava/lang/Throwable;

    check-cast p1, Lr4/nt2;

    invoke-virtual {v0}, Lr4/rs2;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lr4/rs2;->b()Ljava/lang/String;

    move-result-object v0

    check-cast v2, Lr4/gt2;

    invoke-interface {p1, v2, v0, v1}, Lr4/nt2;->c(Lr4/gt2;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
