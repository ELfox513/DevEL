.class public final Lr4/ga0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/xm0;


# instance fields
.field public final synthetic a:Lr4/vm0;

.field public final synthetic b:Lr4/j90;


# direct methods
.method public constructor <init>(Lr4/ia0;Lr4/vm0;Lr4/j90;)V
    .locals 0

    iput-object p2, p0, Lr4/ga0;->a:Lr4/vm0;

    iput-object p3, p0, Lr4/ga0;->b:Lr4/j90;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    iget-object v0, p0, Lr4/ga0;->a:Lr4/vm0;

    new-instance v1, Lr4/s90;

    const-string v2, "Unable to obtain a JavascriptEngine."

    invoke-direct {v1, v2}, Lr4/s90;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lr4/ga0;->b:Lr4/j90;

    invoke-virtual {v0}, Lr4/j90;->g()V

    return-void
.end method
