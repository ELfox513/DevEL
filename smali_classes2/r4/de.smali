.class public final Lr4/de;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr4/gf;

.field public final synthetic b:Lr4/fe;


# direct methods
.method public constructor <init>(Lr4/fe;Lr4/gf;)V
    .locals 0

    iput-object p1, p0, Lr4/de;->b:Lr4/fe;

    iput-object p2, p0, Lr4/de;->a:Lr4/gf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lr4/de;->a:Lr4/gf;

    invoke-virtual {v0}, Lr4/gf;->a()V

    return-void
.end method
