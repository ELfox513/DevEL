.class public final Lr4/r40;
.super Lr4/z30;
.source "SourceFile"


# instance fields
.field public final a:Lv2/h$a;


# direct methods
.method public constructor <init>(Lv2/h$a;)V
    .locals 0

    invoke-direct {p0}, Lr4/z30;-><init>()V

    iput-object p1, p0, Lr4/r40;->a:Lv2/h$a;

    return-void
.end method


# virtual methods
.method public final W1(Lr4/j40;)V
    .locals 2

    iget-object v0, p0, Lr4/r40;->a:Lv2/h$a;

    new-instance v1, Lr4/k40;

    invoke-direct {v1, p1}, Lr4/k40;-><init>(Lr4/j40;)V

    invoke-interface {v0, v1}, Lv2/h$a;->a(Lv2/h;)V

    return-void
.end method
