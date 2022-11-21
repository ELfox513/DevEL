.class public final synthetic Lr4/y32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/dh1;


# instance fields
.field public final a:Lr4/z32;

.field public final b:Lr4/t12;


# direct methods
.method public constructor <init>(Lr4/z32;Lr4/t12;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/y32;->a:Lr4/z32;

    iput-object p2, p0, Lr4/y32;->b:Lr4/t12;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;Lr4/w71;)V
    .locals 2

    iget-object v0, p0, Lr4/y32;->a:Lr4/z32;

    iget-object v1, p0, Lr4/y32;->b:Lr4/t12;

    invoke-virtual {v0, v1, p1, p2, p3}, Lr4/z32;->c(Lr4/t12;ZLandroid/content/Context;Lr4/w71;)V

    return-void
.end method
