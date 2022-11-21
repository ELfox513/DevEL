.class public Lr6/h;
.super Lm5/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr6/h$a;
    }
.end annotation


# instance fields
.field public final a:Lr6/h$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lr6/h$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lm5/h;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lr6/h;->a:Lr6/h$a;

    return-void
.end method

.method public constructor <init>(Lr6/h$a;)V
    .locals 0

    invoke-direct {p0}, Lm5/h;-><init>()V

    iput-object p1, p0, Lr6/h;->a:Lr6/h$a;

    return-void
.end method
