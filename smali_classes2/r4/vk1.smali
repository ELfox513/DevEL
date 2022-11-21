.class public final synthetic Lr4/vk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/u50;


# static fields
.field public static final a:Lr4/u50;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/vk1;

    invoke-direct {v0}, Lr4/vk1;-><init>()V

    sput-object v0, Lr4/vk1;->a:Lr4/u50;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    check-cast p1, Lr4/cs0;

    const-string p2, "Show native ad policy validator overlay."

    invoke-static {p2}, Lr4/cm0;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Lr4/cs0;->I()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
