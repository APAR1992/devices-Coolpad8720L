.class Lcom/android/gallery3d/ui/DialogDetailsView$1;
.super Ljava/lang/Object;
.source "DialogDetailsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/DialogDetailsView;->setDetails(Lcom/android/gallery3d/data/MediaDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/DialogDetailsView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/DialogDetailsView;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/gallery3d/ui/DialogDetailsView$1;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/ui/DialogDetailsView$1;->this$0:Lcom/android/gallery3d/ui/DialogDetailsView;

    #getter for: Lcom/android/gallery3d/ui/DialogDetailsView;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/gallery3d/ui/DialogDetailsView;->access$000(Lcom/android/gallery3d/ui/DialogDetailsView;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 108
    return-void
.end method
